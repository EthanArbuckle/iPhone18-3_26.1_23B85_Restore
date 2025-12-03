@interface PXSearchTokenRepresentedObject
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (PXSearchTokenRepresentedObject)init;
- (PXSearchTokenRepresentedObject)initWithCoder:(id)coder;
- (PXSearchTokenRepresentedObject)initWithDictionary:(id)dictionary;
- (PXSearchTokenRepresentedObject)initWithTitle:(id)title queryToken:(id)token priorityAssetUUID:(id)d;
- (id)description;
- (id)dictionaryForArchiving;
- (unint64_t)hash;
@end

@implementation PXSearchTokenRepresentedObject

- (PXSearchTokenRepresentedObject)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSearchTokenRepresentedObject.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXSearchTokenRepresentedObject init]"}];

  abort();
}

- (PXSearchTokenRepresentedObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PXSearchTokenRepresentedObject;
  v5 = [(PXSearchTokenRepresentedObject *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"queryRepresentedObject"];
    queryToken = v5->_queryToken;
    v5->_queryToken = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v13;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@:%p\n", v5, self];

  [v3 appendFormat:@"Title: %@\n", self->_title];
  [v3 appendFormat:@"Priority Asset UUID: %@\n", self->_priorityAssetUUID];
  [v3 appendFormat:@"QueryToken: %@\n", self->_queryToken];

  return v3;
}

- (unint64_t)hash
{
  title = [(PXSearchTokenRepresentedObject *)self title];
  v4 = [title hash];
  queryToken = [(PXSearchTokenRepresentedObject *)self queryToken];
  v6 = [queryToken hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    title = [(PXSearchTokenRepresentedObject *)self title];
    title2 = [v5 title];
    if (title == title2 || [title isEqualToString:title2])
    {
      queryToken = [(PXSearchTokenRepresentedObject *)self queryToken];
      queryToken2 = [v5 queryToken];
      if (queryToken == queryToken2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [queryToken isEqual:queryToken2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dictionaryForArchiving
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  title = [(PXSearchTokenRepresentedObject *)self title];
  [v3 setObject:title forKeyedSubscript:@"title"];

  v5 = MEMORY[0x1E696ACC8];
  queryToken = [(PXSearchTokenRepresentedObject *)self queryToken];
  v12 = 0;
  v7 = [v5 archivedDataWithRootObject:queryToken requiringSecureCoding:1 error:&v12];
  v8 = v12;

  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"queryRepresentedObject"];
    v9 = [v3 copy];
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to encode Query Token, error: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (PXSearchTokenRepresentedObject)initWithDictionary:(id)dictionary
{
  v15 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"queryRepresentedObject"];

  v12 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
  v8 = v12;
  if (v7)
  {
    self = [(PXSearchTokenRepresentedObject *)self initWithTitle:v5 queryToken:v7];
    selfCopy = self;
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive Query Token. Unable to initalize PXSearchTokenRepresentedObject, error: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PXSearchTokenRepresentedObject)initWithTitle:(id)title queryToken:(id)token priorityAssetUUID:(id)d
{
  titleCopy = title;
  tokenCopy = token;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = PXSearchTokenRepresentedObject;
  v11 = [(PXSearchTokenRepresentedObject *)&v17 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    objc_storeStrong(&v11->_queryToken, token);
    v14 = [dCopy copy];
    priorityAssetUUID = v11->_priorityAssetUUID;
    v11->_priorityAssetUUID = v14;
  }

  return v11;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSearchTokenRepresentedObject.m" lineNumber:120 description:{@"%s is not available as initializer", "+[PXSearchTokenRepresentedObject new]"}];

  abort();
}

@end