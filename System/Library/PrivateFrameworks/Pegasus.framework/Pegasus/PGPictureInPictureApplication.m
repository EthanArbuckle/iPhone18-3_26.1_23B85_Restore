@interface PGPictureInPictureApplication
+ (id)pictureInPictureApplicationWithProcessIdentifier:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPGPictureInPictureApplication:(id)a3;
- (PGPictureInPictureApplication)init;
- (PGPictureInPictureApplication)initWithProcessIdentifier:(int)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation PGPictureInPictureApplication

+ (id)pictureInPictureApplicationWithProcessIdentifier:(int)a3
{
  v3 = *&a3;
  v18 = *MEMORY[0x1E69E9840];
  if (pictureInPictureApplicationWithProcessIdentifier__onceToken != -1)
  {
    +[PGPictureInPictureApplication pictureInPictureApplicationWithProcessIdentifier:];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = pictureInPictureApplicationWithProcessIdentifier____pictureInPictureApplications;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 processIdentifier] == v3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v11 = v10;

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  v11 = [[a1 alloc] initWithProcessIdentifier:v3];
  [pictureInPictureApplicationWithProcessIdentifier____pictureInPictureApplications addObject:v11];
LABEL_14:

  return v11;
}

uint64_t __82__PGPictureInPictureApplication_pictureInPictureApplicationWithProcessIdentifier___block_invoke()
{
  pictureInPictureApplicationWithProcessIdentifier____pictureInPictureApplications = [MEMORY[0x1E696AC70] weakObjectsHashTable];

  return MEMORY[0x1EEE66BB8]();
}

- (PGPictureInPictureApplication)initWithProcessIdentifier:(int)a3
{
  v3 = *&a3;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureApplication initWithProcessIdentifier:?];
  }

  v11.receiver = self;
  v11.super_class = PGPictureInPictureApplication;
  v6 = [(PGPictureInPictureApplication *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_processIdentifier = v3;
    v8 = PGBundleIdentifierForProcessIdentifier(v3);
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;
  }

  return v7;
}

- (PGPictureInPictureApplication)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%@ may only be initialized by PGPictureInPictureController.", v6}];

  return [(PGPictureInPictureApplication *)self initWithProcessIdentifier:0];
}

- (void)dealloc
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureApplication initWithProcessIdentifier:?];
  }

  v4.receiver = self;
  v4.super_class = PGPictureInPictureApplication;
  [(PGPictureInPictureApplication *)&v4 dealloc];
}

- (BOOL)isEqualToPGPictureInPictureApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [(PGPictureInPictureApplication *)self bundleIdentifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [v4 processIdentifier];
    v8 = v7 == [(PGPictureInPictureApplication *)self processIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PGPictureInPictureApplication *)self isEqualToPGPictureInPictureApplication:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PGPictureInPictureApplication *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)initWithProcessIdentifier:(void *)a1 .cold.1(void *a1)
{
  v1 = _PGLogMethodProem(a1, 1);
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@", v4, v5, v6, v7, 2u);
}

@end