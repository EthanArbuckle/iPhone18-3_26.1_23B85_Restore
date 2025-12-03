@interface BRFieldPkgItem
+ (id)directoryAtPath:(id)path;
+ (id)fileAtPath:(id)path mtime:(int64_t)mtime mode:(char)mode;
+ (id)symlinkAtPath:(id)path content:(id)content;
- (char)mode;
@end

@implementation BRFieldPkgItem

- (char)mode
{
  isWritable = [(BRFieldPkgItem *)self isWritable];
  if ([(BRFieldPkgItem *)self isExecutable])
  {
    return isWritable | 2;
  }

  else
  {
    return isWritable;
  }
}

+ (id)fileAtPath:(id)path mtime:(int64_t)mtime mode:(char)mode
{
  pathCopy = path;
  v8 = objc_alloc_init(objc_opt_class());
  [v8 setType:2];
  [v8 setPath:pathCopy];

  [v8 setMtime:mtime];
  if (mode)
  {
    [v8 setIsWritable:1];
  }

  if ((mode & 2) != 0)
  {
    [v8 setIsExecutable:1];
  }

  return v8;
}

+ (id)directoryAtPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setType:1];
  [v4 setPath:pathCopy];

  return v4;
}

+ (id)symlinkAtPath:(id)path content:(id)content
{
  contentCopy = content;
  pathCopy = path;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setType:3];
  [v7 setPath:pathCopy];

  [v7 setSymlinkContent:contentCopy];

  return v7;
}

@end