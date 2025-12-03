@interface TPSWidgetContent
- (BOOL)hasAssets;
- (TPSWidgetContent)initWithCoder:(id)coder;
- (TPSWidgetContent)initWithDictionary:(id)dictionary metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)titleContent;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSWidgetContent

- (id)titleContent
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = TPSWidgetContent;
  titleContent = [(TPSContent *)&v17 titleContent];
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
  v3 = titleContent;
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  priority = [compareCopy priority];
  if (priority <= [(TPSWidgetContent *)self priority])
  {
    priority2 = [compareCopy priority];
    v6 = priority2 != [(TPSWidgetContent *)self priority];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (TPSWidgetContent)initWithDictionary:(id)dictionary metadata:(id)metadata
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = TPSWidgetContent;
  v7 = [(TPSContent *)&v12 initWithDictionary:dictionaryCopy metadata:metadata];
  if (v7 && ([dictionaryCopy TPSSafeDictionaryForKey:@"attrs"], v8 = objc_claimAutoreleasedReturnValue(), attributes = v7->_attributes, v7->_attributes = v8, attributes, !-[TPSWidgetContent hasAssets](v7, "hasAssets")))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TPSWidgetContent;
  v4 = [(TPSContent *)&v7 copyWithZone:zone];
  attributes = [(TPSWidgetContent *)self attributes];
  [v4 setAttributes:attributes];

  [v4 setPriority:{-[TPSWidgetContent priority](self, "priority")}];
  return v4;
}

- (TPSWidgetContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSWidgetContent;
  v5 = [(TPSContent *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"attrs"];
    attributes = v5->_attributes;
    v5->_attributes = v12;

    v5->_priority = [coderCopy decodeIntegerForKey:@"priority"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSWidgetContent;
  coderCopy = coder;
  [(TPSContent *)&v6 encodeWithCoder:coderCopy];
  v5 = [(TPSWidgetContent *)self attributes:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"attrs"];

  [coderCopy encodeInteger:-[TPSWidgetContent priority](self forKey:{"priority"), @"priority"}];
}

- (BOOL)hasAssets
{
  assets = [(TPSContent *)self assets];
  v3 = assets != 0;

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
  attributes = [(TPSWidgetContent *)self attributes];
  [v5 appendFormat:@"\n  %@ = %@\n", @"attrs", attributes];

  return v5;
}

@end