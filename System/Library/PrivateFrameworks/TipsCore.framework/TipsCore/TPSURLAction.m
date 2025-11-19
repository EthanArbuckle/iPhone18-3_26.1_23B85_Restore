@interface TPSURLAction
- (TPSURLAction)initWithCoder:(id)a3;
- (TPSURLAction)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setURL:(id)a3;
@end

@implementation TPSURLAction

- (TPSURLAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSURLAction;
  v5 = [(TPSSerializableObject *)&v15 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 TPSSafeStringForKey:@"text"];
  [(TPSURLAction *)v5 setText:v6];

  v7 = [v4 TPSSafeDictionaryForKey:@"attrs"];
  v8 = [v7 TPSSafeStringForKey:@"href"];
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    [(TPSURLAction *)v5 setURL:v9];
  }

  v10 = [(TPSURLAction *)v5 text];
  if (!v10)
  {

    goto LABEL_8;
  }

  v11 = v10;
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

- (TPSURLAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSURLAction;
  v5 = [(TPSSerializableObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    [(TPSURLAction *)v5 setText:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"href"];
    [(TPSURLAction *)v5 setURL:v7];
  }

  return v5;
}

- (void)setURL:(id)a3
{
  v5 = a3;
  URL = self->_URL;
  v8 = v5;
  if (URL != v5)
  {
    objc_storeStrong(&self->_URL, a3);
    URL = self->_URL;
  }

  if (URL)
  {
    v7 = [TPSURLActionComponents componentsWithURL:?];
    -[TPSURLAction setType:](self, "setType:", [v7 actionType]);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSURLAction;
  v4 = a3;
  [(TPSSerializableObject *)&v7 encodeWithCoder:v4];
  v5 = [(TPSURLAction *)self text:v7.receiver];
  [v4 encodeObject:v5 forKey:@"text"];

  v6 = [(TPSURLAction *)self URL];
  [v4 encodeObject:v6 forKey:@"href"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = TPSURLAction;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:a3];
  v5 = [(TPSURLAction *)self text];
  [v4 setText:v5];

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

  v6 = [(TPSURLAction *)self text];
  [v5 appendFormat:@"\n %@ = %@\n", @"text", v6];

  v7 = [(TPSURLAction *)self URL];
  [v5 appendFormat:@" %@ = %@\n", @"href", v7];

  return v5;
}

@end