@interface PLSAssetProperties
+ (id)assetProperties;
- (BOOL)readPropertiesFromAssetURL:(id)l error:(id *)error;
- (PLSAssetProperties)init;
- (PLSAssetProperties)initWithCoder:(id)coder;
- (id)initFromPropertyList:(id)list;
- (id)propertyList;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLSAssetProperties

- (id)propertyList
{
  v3 = +[NSMutableDictionary dictionary];
  imageProperties = [(PLSAssetProperties *)self imageProperties];

  if (imageProperties)
  {
    imageProperties2 = [(PLSAssetProperties *)self imageProperties];
    [v3 setObject:imageProperties2 forKey:@"imageProperties"];
  }

  fileSystemProperties = [(PLSAssetProperties *)self fileSystemProperties];

  if (fileSystemProperties)
  {
    fileSystemProperties2 = [(PLSAssetProperties *)self fileSystemProperties];
    [v3 setObject:fileSystemProperties2 forKey:@"fileProperties"];
  }

  fileName = [(PLSAssetProperties *)self fileName];

  if (fileName)
  {
    fileName2 = [(PLSAssetProperties *)self fileName];
    [v3 setObject:fileName2 forKey:@"fileName"];
  }

  return v3;
}

- (id)initFromPropertyList:(id)list
{
  listCopy = list;
  v5 = [(PLSAssetProperties *)self init];
  if (v5)
  {
    v6 = [listCopy objectForKey:@"imageProperties"];
    imageProperties = v5->_imageProperties;
    v5->_imageProperties = v6;

    v8 = [listCopy objectForKey:@"fileProperties"];
    fileSystemProperties = v5->_fileSystemProperties;
    v5->_fileSystemProperties = v8;

    v10 = [listCopy objectForKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileName = [(PLSAssetProperties *)self fileName];
  [coderCopy encodeObject:fileName forKey:@"fileName"];

  imageProperties = [(PLSAssetProperties *)self imageProperties];
  [coderCopy encodeObject:imageProperties forKey:@"imageProperties"];

  fileSystemProperties = [(PLSAssetProperties *)self fileSystemProperties];
  [coderCopy encodeObject:fileSystemProperties forKey:@"fileProperties"];
}

- (PLSAssetProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PLSAssetProperties;
  v5 = [(PLSAssetProperties *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"imageProperties"];
    imageProperties = v5->_imageProperties;
    v5->_imageProperties = v6;

    v8 = [coderCopy decodePropertyListForKey:@"fileProperties"];
    fileSystemProperties = v5->_fileSystemProperties;
    v5->_fileSystemProperties = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v10;
  }

  return v5;
}

- (BOOL)readPropertiesFromAssetURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = CGImageSourceCreateWithURL(lCopy, 0);
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
      path = [(__CFURL *)lCopy path];
      v18 = 0;
      v15 = [v13 attributesOfItemAtPath:path error:&v18];

      [(PLSAssetProperties *)self setImageProperties:v11];
      [(PLSAssetProperties *)self setFileSystemProperties:v15];
      lastPathComponent = [(__CFURL *)lCopy lastPathComponent];
      [(PLSAssetProperties *)self setFileName:lastPathComponent];
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