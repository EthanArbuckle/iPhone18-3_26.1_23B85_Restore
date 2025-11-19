@interface PXSearchTokenRepresentedObject
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (PXSearchTokenRepresentedObject)init;
- (PXSearchTokenRepresentedObject)initWithCoder:(id)a3;
- (PXSearchTokenRepresentedObject)initWithDictionary:(id)a3;
- (PXSearchTokenRepresentedObject)initWithTitle:(id)a3 queryToken:(id)a4 priorityAssetUUID:(id)a5;
- (id)description;
- (id)dictionaryForArchiving;
- (unint64_t)hash;
@end

@implementation PXSearchTokenRepresentedObject

- (PXSearchTokenRepresentedObject)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSearchTokenRepresentedObject.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXSearchTokenRepresentedObject init]"}];

  abort();
}

- (PXSearchTokenRepresentedObject)initWithCoder:(id)a3
{
  v4 = a3;
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
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"queryRepresentedObject"];
    queryToken = v5->_queryToken;
    v5->_queryToken = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
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
  v3 = [(PXSearchTokenRepresentedObject *)self title];
  v4 = [v3 hash];
  v5 = [(PXSearchTokenRepresentedObject *)self queryToken];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXSearchTokenRepresentedObject *)self title];
    v7 = [v5 title];
    if (v6 == v7 || [v6 isEqualToString:v7])
    {
      v8 = [(PXSearchTokenRepresentedObject *)self queryToken];
      v9 = [v5 queryToken];
      if (v8 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqual:v9];
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
  v4 = [(PXSearchTokenRepresentedObject *)self title];
  [v3 setObject:v4 forKeyedSubscript:@"title"];

  v5 = MEMORY[0x1E696ACC8];
  v6 = [(PXSearchTokenRepresentedObject *)self queryToken];
  v12 = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
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

- (PXSearchTokenRepresentedObject)initWithDictionary:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"title"];
  v6 = [v4 objectForKeyedSubscript:@"queryRepresentedObject"];

  v12 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v12];
  v8 = v12;
  if (v7)
  {
    self = [(PXSearchTokenRepresentedObject *)self initWithTitle:v5 queryToken:v7];
    v9 = self;
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

    v9 = 0;
  }

  return v9;
}

- (PXSearchTokenRepresentedObject)initWithTitle:(id)a3 queryToken:(id)a4 priorityAssetUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PXSearchTokenRepresentedObject;
  v11 = [(PXSearchTokenRepresentedObject *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    objc_storeStrong(&v11->_queryToken, a4);
    v14 = [v10 copy];
    priorityAssetUUID = v11->_priorityAssetUUID;
    v11->_priorityAssetUUID = v14;
  }

  return v11;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXSearchTokenRepresentedObject.m" lineNumber:120 description:{@"%s is not available as initializer", "+[PXSearchTokenRepresentedObject new]"}];

  abort();
}

@end