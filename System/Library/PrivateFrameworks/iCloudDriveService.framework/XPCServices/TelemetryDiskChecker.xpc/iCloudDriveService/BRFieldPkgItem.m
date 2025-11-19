@interface BRFieldPkgItem
+ (id)directoryAtPath:(id)a3;
+ (id)fileAtPath:(id)a3 mtime:(int64_t)a4 mode:(char)a5;
+ (id)symlinkAtPath:(id)a3 content:(id)a4;
- (char)mode;
@end

@implementation BRFieldPkgItem

- (char)mode
{
  v3 = [(BRFieldPkgItem *)self isWritable];
  if ([(BRFieldPkgItem *)self isExecutable])
  {
    return v3 | 2;
  }

  else
  {
    return v3;
  }
}

+ (id)fileAtPath:(id)a3 mtime:(int64_t)a4 mode:(char)a5
{
  v7 = a3;
  v8 = objc_alloc_init(objc_opt_class());
  [v8 setType:2];
  [v8 setPath:v7];

  [v8 setMtime:a4];
  if (a5)
  {
    [v8 setIsWritable:1];
  }

  if ((a5 & 2) != 0)
  {
    [v8 setIsExecutable:1];
  }

  return v8;
}

+ (id)directoryAtPath:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setType:1];
  [v4 setPath:v3];

  return v4;
}

+ (id)symlinkAtPath:(id)a3 content:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setType:3];
  [v7 setPath:v6];

  [v7 setSymlinkContent:v5];

  return v7;
}

@end