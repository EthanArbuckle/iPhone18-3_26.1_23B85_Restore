@interface PLSAssetProperties
+ (id)assetProperties;
- (BOOL)readPropertiesFromAssetURL:(id)a3 error:(id *)a4;
- (PLSAssetProperties)init;
- (PLSAssetProperties)initWithCoder:(id)a3;
- (id)initFromPropertyList:(id)a3;
- (id)propertyList;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLSAssetProperties

- (id)propertyList
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(PLSAssetProperties *)self imageProperties];

  if (v4)
  {
    v5 = [(PLSAssetProperties *)self imageProperties];
    [v3 setObject:v5 forKey:@"imageProperties"];
  }

  v6 = [(PLSAssetProperties *)self fileSystemProperties];

  if (v6)
  {
    v7 = [(PLSAssetProperties *)self fileSystemProperties];
    [v3 setObject:v7 forKey:@"fileProperties"];
  }

  v8 = [(PLSAssetProperties *)self fileName];

  if (v8)
  {
    v9 = [(PLSAssetProperties *)self fileName];
    [v3 setObject:v9 forKey:@"fileName"];
  }

  return v3;
}

- (id)initFromPropertyList:(id)a3
{
  v4 = a3;
  v5 = [(PLSAssetProperties *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"imageProperties"];
    imageProperties = v5->_imageProperties;
    v5->_imageProperties = v6;

    v8 = [v4 objectForKey:@"fileProperties"];
    fileSystemProperties = v5->_fileSystemProperties;
    v5->_fileSystemProperties = v8;

    v10 = [v4 objectForKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLSAssetProperties *)self fileName];
  [v4 encodeObject:v5 forKey:@"fileName"];

  v6 = [(PLSAssetProperties *)self imageProperties];
  [v4 encodeObject:v6 forKey:@"imageProperties"];

  v7 = [(PLSAssetProperties *)self fileSystemProperties];
  [v4 encodeObject:v7 forKey:@"fileProperties"];
}

- (PLSAssetProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLSAssetProperties;
  v5 = [(PLSAssetProperties *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"imageProperties"];
    imageProperties = v5->_imageProperties;
    v5->_imageProperties = v6;

    v8 = [v4 decodePropertyListForKey:@"fileProperties"];
    fileSystemProperties = v5->_fileSystemProperties;
    v5->_fileSystemProperties = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;
  }

  return v5;
}

- (BOOL)readPropertiesFromAssetURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = CGImageSourceCreateWithURL(v5, 0);
  if (v6)
  {
    v7 = v6;
    v8 = CGImageSourceCopyPropertiesAtIndex(v6, 0, 0);
    v9 = v8 != 0;
    if (v8)
    {
      v10 = v8;
      v11 = [NSMutableDictionary dictionaryWithDictionary:v8];
      CFRelease(v10);
      v12 = CGImageSourceGetType(v7);
      [v11 setObject:v12 forKey:@"RKFileUTType"];
      v13 = +[NSFileManager defaultManager];
      v14 = [(__CFURL *)v5 path];
      v18 = 0;
      v15 = [v13 attributesOfItemAtPath:v14 error:&v18];

      [(PLSAssetProperties *)self setImageProperties:v11];
      [(PLSAssetProperties *)self setFileSystemProperties:v15];
      v16 = [(__CFURL *)v5 lastPathComponent];
      [(PLSAssetProperties *)self setFileName:v16];
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PLSAssetProperties)init
{
  v3.receiver = self;
  v3.super_class = PLSAssetProperties;
  return [(PLSAssetProperties *)&v3 init];
}

+ (id)assetProperties
{
  v2 = objc_alloc_init(PLSAssetProperties);

  return v2;
}

@end