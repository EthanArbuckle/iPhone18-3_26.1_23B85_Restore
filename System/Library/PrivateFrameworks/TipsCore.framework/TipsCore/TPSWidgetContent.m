@interface TPSWidgetContent
- (BOOL)hasAssets;
- (TPSWidgetContent)initWithCoder:(id)a3;
- (TPSWidgetContent)initWithDictionary:(id)a3 metadata:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)titleContent;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSWidgetContent

- (id)titleContent
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = TPSWidgetContent;
  v2 = [(TPSContent *)&v17 titleContent];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_13;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        v7 &= objc_opt_isKindOfClass();
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v10 = v3;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [v4 priority];
  if (v5 <= [(TPSWidgetContent *)self priority])
  {
    v7 = [v4 priority];
    v6 = v7 != [(TPSWidgetContent *)self priority];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (TPSWidgetContent)initWithDictionary:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = TPSWidgetContent;
  v7 = [(TPSContent *)&v12 initWithDictionary:v6 metadata:a4];
  if (v7 && ([v6 TPSSafeDictionaryForKey:@"attrs"], v8 = objc_claimAutoreleasedReturnValue(), attributes = v7->_attributes, v7->_attributes = v8, attributes, !-[TPSWidgetContent hasAssets](v7, "hasAssets")))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TPSWidgetContent;
  v4 = [(TPSContent *)&v7 copyWithZone:a3];
  v5 = [(TPSWidgetContent *)self attributes];
  [v4 setAttributes:v5];

  [v4 setPriority:{-[TPSWidgetContent priority](self, "priority")}];
  return v4;
}

- (TPSWidgetContent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSWidgetContent;
  v5 = [(TPSContent *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"attrs"];
    attributes = v5->_attributes;
    v5->_attributes = v12;

    v5->_priority = [v4 decodeIntegerForKey:@"priority"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSWidgetContent;
  v4 = a3;
  [(TPSContent *)&v6 encodeWithCoder:v4];
  v5 = [(TPSWidgetContent *)self attributes:v6.receiver];
  [v4 encodeObject:v5 forKey:@"attrs"];

  [v4 encodeInteger:-[TPSWidgetContent priority](self forKey:{"priority"), @"priority"}];
}

- (BOOL)hasAssets
{
  v2 = [(TPSContent *)self assets];
  v3 = v2 != 0;

  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v8.receiver = self;
  v8.super_class = TPSWidgetContent;
  v4 = [(TPSContent *)&v8 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"WIDGET PRIORITY: %ld", -[TPSWidgetContent priority](self, "priority")];
  v6 = [(TPSWidgetContent *)self attributes];
  [v5 appendFormat:@"\n  %@ = %@\n", @"attrs", v6];

  return v5;
}

@end