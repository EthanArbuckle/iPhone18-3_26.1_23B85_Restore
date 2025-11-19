@interface PCVersionedFilename
+ (id)nextAvailableURLForWritingToURL:(id)a3;
+ (id)nextAvailableURLForWritingURL:(id)a3 toURL:(id)a4 checkContentsForEquality:(BOOL)a5 contentsAreEqual:(BOOL *)a6;
+ (id)removeVersion:(unint64_t)a3 fromFilename:(id)a4;
+ (unint64_t)filenameVersion:(id)a3 formatter:(id)a4;
- (PCVersionedFilename)initWithFilename:(id)a3;
- (id)nextFilename;
- (void)dealloc;
@end

@implementation PCVersionedFilename

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCVersionedFilename;
  [(PCVersionedFilename *)&v3 dealloc];
}

- (PCVersionedFilename)initWithFilename:(id)a3
{
  v7.receiver = self;
  v7.super_class = PCVersionedFilename;
  v4 = [(PCVersionedFilename *)&v7 init];
  if (v4)
  {
    v4->_filename = [objc_msgSend(a3 "stringByDeletingPathExtension")];
    v4->_extension = [objc_msgSend(a3 "pathExtension")];
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v5 setNumberStyle:1];
    v4->_version = [PCVersionedFilename filenameVersion:v4->_filename formatter:v5];

    v4->_baseFilename = [+[PCVersionedFilename removeVersion:fromFilename:](PCVersionedFilename removeVersion:v4->_version fromFilename:{v4->_filename), "copy"}];
  }

  return v4;
}

+ (id)nextAvailableURLForWritingToURL:(id)a3
{
  v3 = a3;
  v8 = 0;
  if ([a3 checkResourceIsReachableAndReturnError:&v8])
  {
    v4 = [v3 URLByDeletingLastPathComponent];
    v5 = -[PCVersionedFilename initWithFilename:]([PCVersionedFilename alloc], "initWithFilename:", [v3 lastPathComponent]);
    do
    {
      v3 = [v4 URLByAppendingPathComponent:{-[PCVersionedFilename nextFilename](v5, "nextFilename")}];
      v8 = 0;
      v6 = [v3 checkResourceIsReachableAndReturnError:&v8];
      [(PCVersionedFilename *)v5 incrementVersion];
    }

    while ((v6 & 1) != 0);
  }

  return v3;
}

+ (id)nextAvailableURLForWritingURL:(id)a3 toURL:(id)a4 checkContentsForEquality:(BOOL)a5 contentsAreEqual:(BOOL *)a6
{
  v7 = a5;
  v8 = a4;
  v16 = 0;
  v10 = [a4 checkResourceIsReachableAndReturnError:&v16];
  if (a6)
  {
    *a6 = 0;
  }

  if (v10)
  {
    v11 = [v8 URLByDeletingLastPathComponent];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = -[PCVersionedFilename initWithFilename:]([PCVersionedFilename alloc], "initWithFilename:", [v8 lastPathComponent]);
    while (!v7 || ![v12 contentsEqualAtPath:objc_msgSend(a3 andPath:{"path"), objc_msgSend(v8, "path")}])
    {
      v8 = [v11 URLByAppendingPathComponent:{-[PCVersionedFilename nextFilename](v13, "nextFilename")}];
      v16 = 0;
      v14 = [v8 checkResourceIsReachableAndReturnError:&v16];
      [(PCVersionedFilename *)v13 incrementVersion];
      if ((v14 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (a6)
    {
      *a6 = 1;
    }

LABEL_11:
  }

  return v8;
}

- (id)nextFilename
{
  v3 = [PCVersionedFilename appendVersion:[(PCVersionedFilename *)self version]+ 1 toFilename:[(PCVersionedFilename *)self baseFilename]];
  v4 = [(PCVersionedFilename *)self extension];

  return [v3 stringByAppendingPathExtension:v4];
}

+ (unint64_t)filenameVersion:(id)a3 formatter:(id)a4
{
  v5 = [a3 componentsSeparatedByString:@" "];
  if ([v5 count] < 2)
  {
    return 1;
  }

  v6 = [a4 numberFromString:{objc_msgSend(v5, "lastObject")}];
  if (!v6)
  {
    return 1;
  }

  return [v6 unsignedIntegerValue];
}

+ (id)removeVersion:(unint64_t)a3 fromFilename:(id)a4
{
  v5 = [a4 rangeOfString:objc_msgSend(MEMORY[0x277CCACA8] options:{"stringWithFormat:", @" %@", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a3)), 4}];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a4;
  }

  return [a4 substringToIndex:v5];
}

@end