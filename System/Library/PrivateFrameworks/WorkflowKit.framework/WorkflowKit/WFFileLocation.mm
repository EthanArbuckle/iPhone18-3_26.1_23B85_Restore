@interface WFFileLocation
+ (Class)supportedClassForURL:(id)a3;
+ (id)locationWithSerializedRepresentation:(id)a3;
+ (id)locationWithURL:(id)a3;
- (NSString)description;
- (WFFileLocation)initWithCoder:(id)a3;
- (WFFileLocation)initWithRelativeSubpath:(id)a3;
- (WFFileLocation)initWithURL:(id)a3;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileLocation

- (id)serializedRepresentation
{
  v3 = objc_opt_new();
  v4 = WFFileLocationClassByType();
  v5 = [v4 allKeysForObject:objc_opt_class()];
  v6 = [v5 firstObject];

  [v3 setValue:v6 forKey:@"WFFileLocationType"];
  v7 = [(WFFileLocation *)self relativeSubpath];
  [v3 setValue:v7 forKey:@"relativeSubpath"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFFileLocation *)self relativeSubpath];
  [v4 encodeObject:v5 forKey:@"relativeSubpath"];
}

- (WFFileLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFFileLocation *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relativeSubpath"];
    relativeSubpath = v5->_relativeSubpath;
    v5->_relativeSubpath = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFFileLocation *)self relativeSubpath];
  v7 = [v3 stringWithFormat:@"<%@: %p, relativeSubpath: %@>", v5, self, v6];

  return v7;
}

- (WFFileLocation)initWithRelativeSubpath:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = WFFileLocation;
  v6 = [(WFFileLocation *)&v11 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = getWFFilesLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[WFFileLocation initWithRelativeSubpath:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Relative subpath %@", buf, 0x16u);
  }

  objc_storeStrong(&v6->_relativeSubpath, a3);
  if (v6->_relativeSubpath)
  {
    v8 = v6;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (WFFileLocation)initWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFFileLocation.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v10.receiver = self;
  v10.super_class = WFFileLocation;
  v6 = [(WFFileLocation *)&v10 init];
  if (v6)
  {
    v7 = [objc_opt_class() subpathFromURL:v5];
    v6 = [(WFFileLocation *)v6 initWithRelativeSubpath:v7];
  }

  return v6;
}

+ (id)locationWithSerializedRepresentation:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKey:@"WFFileLocationType"];
    v5 = WFFileLocationClassByType();
    v6 = [v5 objectForKey:v4];

    v7 = [v6 locationWithSerializedRepresentation:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (Class)supportedClassForURL:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) supportedClassForURL:{v3, v15}];
        if (v9)
        {
          v11 = v9;
          v12 = getWFFilesLogObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v20 = "+[WFFileLocation supportedClassForURL:]";
            v21 = 2112;
            v22 = v11;
            v23 = 2112;
            v24 = v3;
            _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEBUG, "%s Found supported class: %@ for URL: %@", buf, 0x20u);
          }

          v10 = v11;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)locationWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"WFFileLocation.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v6 = [v5 startAccessingSecurityScopedResource];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__WFFileLocation_locationWithURL___block_invoke;
  aBlock[3] = &unk_1E837DEA0;
  v15 = v6;
  v7 = v5;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [objc_opt_class() supportedClassForURL:v7];
  if (v9)
  {
    v10 = [[v9 alloc] initWithURL:v7];
  }

  else
  {
    v10 = 0;
  }

  v8[2](v8);

  return v10;
}

uint64_t __34__WFFileLocation_locationWithURL___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

@end