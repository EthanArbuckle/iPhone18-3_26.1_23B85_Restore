@interface PCVersionedFilename
+ (id)nextAvailableURLForWritingToURL:(id)l;
+ (id)nextAvailableURLForWritingURL:(id)l toURL:(id)rL checkContentsForEquality:(BOOL)equality contentsAreEqual:(BOOL *)equal;
+ (id)removeVersion:(unint64_t)version fromFilename:(id)filename;
+ (unint64_t)filenameVersion:(id)version formatter:(id)formatter;
- (PCVersionedFilename)initWithFilename:(id)filename;
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

- (PCVersionedFilename)initWithFilename:(id)filename
{
  v7.receiver = self;
  v7.super_class = PCVersionedFilename;
  v4 = [(PCVersionedFilename *)&v7 init];
  if (v4)
  {
    v4->_filename = [objc_msgSend(filename "stringByDeletingPathExtension")];
    v4->_extension = [objc_msgSend(filename "pathExtension")];
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v5 setNumberStyle:1];
    v4->_version = [PCVersionedFilename filenameVersion:v4->_filename formatter:v5];

    v4->_baseFilename = [+[PCVersionedFilename removeVersion:fromFilename:](PCVersionedFilename removeVersion:v4->_version fromFilename:{v4->_filename), "copy"}];
  }

  return v4;
}

+ (id)nextAvailableURLForWritingToURL:(id)l
{
  lCopy = l;
  v8 = 0;
  if ([l checkResourceIsReachableAndReturnError:&v8])
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v5 = -[PCVersionedFilename initWithFilename:]([PCVersionedFilename alloc], "initWithFilename:", [lCopy lastPathComponent]);
    do
    {
      lCopy = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:{-[PCVersionedFilename nextFilename](v5, "nextFilename")}];
      v8 = 0;
      v6 = [lCopy checkResourceIsReachableAndReturnError:&v8];
      [(PCVersionedFilename *)v5 incrementVersion];
    }

    while ((v6 & 1) != 0);
  }

  return lCopy;
}

+ (id)nextAvailableURLForWritingURL:(id)l toURL:(id)rL checkContentsForEquality:(BOOL)equality contentsAreEqual:(BOOL *)equal
{
  equalityCopy = equality;
  rLCopy = rL;
  v16 = 0;
  v10 = [rL checkResourceIsReachableAndReturnError:&v16];
  if (equal)
  {
    *equal = 0;
  }

  if (v10)
  {
    uRLByDeletingLastPathComponent = [rLCopy URLByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = -[PCVersionedFilename initWithFilename:]([PCVersionedFilename alloc], "initWithFilename:", [rLCopy lastPathComponent]);
    while (!equalityCopy || ![defaultManager contentsEqualAtPath:objc_msgSend(l andPath:{"path"), objc_msgSend(rLCopy, "path")}])
    {
      rLCopy = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:{-[PCVersionedFilename nextFilename](v13, "nextFilename")}];
      v16 = 0;
      v14 = [rLCopy checkResourceIsReachableAndReturnError:&v16];
      [(PCVersionedFilename *)v13 incrementVersion];
      if ((v14 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (equal)
    {
      *equal = 1;
    }

LABEL_11:
  }

  return rLCopy;
}

- (id)nextFilename
{
  v3 = [PCVersionedFilename appendVersion:[(PCVersionedFilename *)self version]+ 1 toFilename:[(PCVersionedFilename *)self baseFilename]];
  extension = [(PCVersionedFilename *)self extension];

  return [v3 stringByAppendingPathExtension:extension];
}

+ (unint64_t)filenameVersion:(id)version formatter:(id)formatter
{
  v5 = [version componentsSeparatedByString:@" "];
  if ([v5 count] < 2)
  {
    return 1;
  }

  v6 = [formatter numberFromString:{objc_msgSend(v5, "lastObject")}];
  if (!v6)
  {
    return 1;
  }

  return [v6 unsignedIntegerValue];
}

+ (id)removeVersion:(unint64_t)version fromFilename:(id)filename
{
  v5 = [filename rangeOfString:objc_msgSend(MEMORY[0x277CCACA8] options:{"stringWithFormat:", @" %@", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", version)), 4}];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return filename;
  }

  return [filename substringToIndex:v5];
}

@end