@interface WFFileLocation
+ (Class)supportedClassForURL:(id)l;
+ (id)locationWithSerializedRepresentation:(id)representation;
+ (id)locationWithURL:(id)l;
- (NSString)description;
- (WFFileLocation)initWithCoder:(id)coder;
- (WFFileLocation)initWithRelativeSubpath:(id)subpath;
- (WFFileLocation)initWithURL:(id)l;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileLocation

- (id)serializedRepresentation
{
  v3 = objc_opt_new();
  v4 = WFFileLocationClassByType();
  v5 = [v4 allKeysForObject:objc_opt_class()];
  firstObject = [v5 firstObject];

  [v3 setValue:firstObject forKey:@"WFFileLocationType"];
  relativeSubpath = [(WFFileLocation *)self relativeSubpath];
  [v3 setValue:relativeSubpath forKey:@"relativeSubpath"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  relativeSubpath = [(WFFileLocation *)self relativeSubpath];
  [coderCopy encodeObject:relativeSubpath forKey:@"relativeSubpath"];
}

- (WFFileLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WFFileLocation *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relativeSubpath"];
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
  relativeSubpath = [(WFFileLocation *)self relativeSubpath];
  v7 = [v3 stringWithFormat:@"<%@: %p, relativeSubpath: %@>", v5, self, relativeSubpath];

  return v7;
}

- (WFFileLocation)initWithRelativeSubpath:(id)subpath
{
  v16 = *MEMORY[0x1E69E9840];
  subpathCopy = subpath;
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
    v15 = subpathCopy;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Relative subpath %@", buf, 0x16u);
  }

  objc_storeStrong(&v6->_relativeSubpath, subpath);
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

- (WFFileLocation)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileLocation.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v10.receiver = self;
  v10.super_class = WFFileLocation;
  v6 = [(WFFileLocation *)&v10 init];
  if (v6)
  {
    v7 = [objc_opt_class() subpathFromURL:lCopy];
    v6 = [(WFFileLocation *)v6 initWithRelativeSubpath:v7];
  }

  return v6;
}

+ (id)locationWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [representationCopy objectForKey:@"WFFileLocationType"];
    v5 = WFFileLocationClassByType();
    v6 = [v5 objectForKey:v4];

    v7 = [v6 locationWithSerializedRepresentation:representationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (Class)supportedClassForURL:(id)l
{
  v26[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
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

        v9 = [*(*(&v15 + 1) + 8 * i) supportedClassForURL:{lCopy, v15}];
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
            v24 = lCopy;
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

+ (id)locationWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileLocation.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__WFFileLocation_locationWithURL___block_invoke;
  aBlock[3] = &unk_1E837DEA0;
  v15 = startAccessingSecurityScopedResource;
  v7 = lCopy;
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