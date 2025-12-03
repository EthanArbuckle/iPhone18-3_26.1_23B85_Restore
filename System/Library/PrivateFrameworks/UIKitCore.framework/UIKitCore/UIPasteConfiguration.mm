@interface UIPasteConfiguration
+ (UIPasteConfiguration)pasteConfigurationWithAcceptableTypes:(id)types;
+ (id)_pasteConfigurationForAcceptingClasses:(id)classes;
- (BOOL)isEqual:(id)equal;
- (NSArray)acceptableTypeIdentifiers;
- (UIPasteConfiguration)init;
- (UIPasteConfiguration)initWithAcceptableTypeIdentifiers:(NSArray *)acceptableTypeIdentifiers;
- (UIPasteConfiguration)initWithCoder:(id)coder;
- (UIPasteConfiguration)initWithTypeIdentifiersForAcceptingClass:(id)aClass;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addTypeIdentifiersForAcceptingClass:(id)aClass;
- (void)encodeWithCoder:(id)coder;
- (void)setAcceptableTypeIdentifiers:(NSArray *)acceptableTypeIdentifiers;
@end

@implementation UIPasteConfiguration

- (UIPasteConfiguration)init
{
  v6.receiver = self;
  v6.super_class = UIPasteConfiguration;
  v2 = [(UIPasteConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    acceptableTypes = v2->_acceptableTypes;
    v2->_acceptableTypes = v3;
  }

  return v2;
}

- (NSArray)acceptableTypeIdentifiers
{
  array = [(NSMutableOrderedSet *)self->_acceptableTypes array];
  v3 = [array copy];

  return v3;
}

+ (id)_pasteConfigurationForAcceptingClasses:(id)classes
{
  v16 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v4 = objc_alloc_init(UIPasteConfiguration);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = classesCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UIPasteConfiguration *)v4 addTypeIdentifiersForAcceptingClass:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (UIPasteConfiguration)initWithTypeIdentifiersForAcceptingClass:(id)aClass
{
  v4 = [(UIPasteConfiguration *)self init];
  v5 = v4;
  if (v4)
  {
    [(UIPasteConfiguration *)v4 addTypeIdentifiersForAcceptingClass:aClass];
  }

  return v5;
}

- (void)addTypeIdentifiersForAcceptingClass:(id)aClass
{
  acceptableTypes = self->_acceptableTypes;
  readableTypeIdentifiersForItemProvider = [aClass readableTypeIdentifiersForItemProvider];
  [(NSMutableOrderedSet *)acceptableTypes addObjectsFromArray:readableTypeIdentifiersForItemProvider];
}

+ (UIPasteConfiguration)pasteConfigurationWithAcceptableTypes:(id)types
{
  typesCopy = types;
  v5 = [[self alloc] initWithAcceptableTypes:typesCopy];

  return v5;
}

- (UIPasteConfiguration)initWithAcceptableTypeIdentifiers:(NSArray *)acceptableTypeIdentifiers
{
  v4 = acceptableTypeIdentifiers;
  v5 = [(UIPasteConfiguration *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableOrderedSet *)v5->_acceptableTypes addObjectsFromArray:v4];
  }

  return v6;
}

- (void)setAcceptableTypeIdentifiers:(NSArray *)acceptableTypeIdentifiers
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = acceptableTypeIdentifiers;
  v6 = [[v4 alloc] initWithArray:v5];

  acceptableTypes = self->_acceptableTypes;
  self->_acceptableTypes = v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSMutableOrderedSet *)self->_acceptableTypes copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    acceptableTypes = self->_acceptableTypes;
    v6 = equalCopy[1];

    return [(NSMutableOrderedSet *)acceptableTypes isEqualToOrderedSet:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIPasteConfiguration;
    v8 = [(UIPasteConfiguration *)&v9 isEqual:equalCopy];

    return v8;
  }
}

- (UIPasteConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UIPasteConfiguration *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"at"];
    v10 = [v9 mutableCopy];
    acceptableTypes = v5->_acceptableTypes;
    v5->_acceptableTypes = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  acceptableTypes = self->_acceptableTypes;
  if (acceptableTypes)
  {
    coderCopy = coder;
    v5 = [(NSMutableOrderedSet *)acceptableTypes copy];
    [coderCopy encodeObject:v5 forKey:@"at"];
  }
}

@end