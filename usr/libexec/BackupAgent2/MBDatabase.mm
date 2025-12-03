@interface MBDatabase
+ (id)databaseWithDrive:(id)drive path:(id)path domainManager:(id)manager error:(id *)error;
+ (id)databaseWithFile:(id)file domainManager:(id)manager error:(id *)error;
- (MBDatabase)initWithData:(id)data domainManager:(id)manager error:(id *)error;
- (MBDatabase)initWithDrive:(id)drive path:(id)path domainManager:(id)manager error:(id *)error;
- (MBDatabase)initWithFile:(id)file domainManager:(id)manager error:(id *)error;
- (NSString)description;
- (id)enumerateFiles:(id)files;
- (id)fileAtOffset:(unint64_t)offset;
- (id)fileEnumerator;
- (id)indexFromDatabaseIgnoringTruncation:(BOOL)truncation;
@end

@implementation MBDatabase

+ (id)databaseWithFile:(id)file domainManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  fileCopy = file;
  v9 = [[MBDatabase alloc] initWithFile:fileCopy domainManager:managerCopy error:error];

  return v9;
}

+ (id)databaseWithDrive:(id)drive path:(id)path domainManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  pathCopy = path;
  driveCopy = drive;
  v12 = [[MBDatabase alloc] initWithDrive:driveCopy path:pathCopy domainManager:managerCopy error:error];

  return v12;
}

- (MBDatabase)initWithData:(id)data domainManager:(id)manager error:(id *)error
{
  dataCopy = data;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = MBDatabase;
  v9 = [(MBDatabase *)&v17 init];
  if (v9)
  {
    v10 = [[MBDecoder alloc] initWithData:dataCopy];
    decoder = v9->_decoder;
    v9->_decoder = v10;

    objc_storeStrong(&v9->_domainManager, manager);
    if ([(MBDecoder *)v9->_decoder decodeInt32]!= 1835164770)
    {
      v16 = [[MBException alloc] initWithCode:11 format:@"Incorrect database magic number"];
LABEL_11:
      objc_exception_throw(v16);
    }

    [(MBDecoder *)v9->_decoder decodeVersion];
    v9->_version = v12;
    if (v12 < 5.0 || v12 >= 6.0)
    {
      v16 = [[MBException alloc] initWithCode:203 format:{@"Unsupported database version: %0.1f", *&v9->_version}];
      goto LABEL_11;
    }

    v9->_offsetBase = [(MBDecoder *)v9->_decoder offset];
  }

  v14 = v9;

  return v14;
}

- (MBDatabase)initWithFile:(id)file domainManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  v9 = [NSData dataWithContentsOfFile:file options:8 error:error];
  if (v9)
  {
    self = [(MBDatabase *)self initWithData:v9 domainManager:managerCopy error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MBDatabase)initWithDrive:(id)drive path:(id)path domainManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  v11 = [drive dataAtPath:path options:&off_100109650 error:error];
  if (v11)
  {
    self = [(MBDatabase *)self initWithData:v11 domainManager:managerCopy error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)fileAtOffset:(unint64_t)offset
{
  [(MBDecoder *)self->_decoder setOffset:self->_offsetBase + offset];
  decoder = self->_decoder;

  return [MBFile fileWithDecoder:decoder database:self];
}

- (id)fileEnumerator
{
  v3 = [MBDecoder alloc];
  data = [(MBDecoder *)self->_decoder data];
  v5 = [(MBDecoder *)v3 initWithData:data];

  [(MBDecoder *)v5 setOffset:self->_offsetBase];
  v6 = [[MBDatabaseFileEnumerator alloc] initWithDecoder:v5 database:self];

  return v6;
}

- (id)enumerateFiles:(id)files
{
  filesCopy = files;
  fileEnumerator = [(MBDatabase *)self fileEnumerator];
  nextObject = [fileEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      if (!filesCopy[2](filesCopy, nextObject2))
      {
        break;
      }

      nextObject2 = [fileEnumerator nextObject];
    }

    while (nextObject2);
  }

  return 0;
}

- (id)indexFromDatabaseIgnoringTruncation:(BOOL)truncation
{
  v4 = +[MBDatabaseIndex databaseIndex];
  v5 = [MBDecoder alloc];
  data = [(MBDecoder *)self->_decoder data];
  v7 = [(MBDecoder *)v5 initWithData:data];

  [(MBDecoder *)v7 setOffset:self->_offsetBase];
  offset = [(MBDecoder *)v7 offset];
  data2 = [(MBDecoder *)v7 data];
  v10 = [data2 length];

  if (offset < v10)
  {
    do
    {
      v11 = objc_autoreleasePoolPush();
      offset2 = [(MBDecoder *)v7 offset];
      offsetBase = self->_offsetBase;
      v14 = [MBFile fileWithDecoder:v7 database:self];
      v15 = &offset2[-offsetBase];
      v16 = +[MBDatabaseIndex flagsForMode:](MBDatabaseIndex, "flagsForMode:", [v14 mode]);
      fileID = [v14 fileID];
      [v4 setOffset:v15 flags:v16 forFileID:fileID];

      domain = [v14 domain];
      nonRedirectedDomain = [v14 nonRedirectedDomain];

      if (domain != nonRedirectedDomain)
      {
        [v4 setDomainRedirects:1];
      }

      objc_autoreleasePoolPop(v11);
      offset3 = [(MBDecoder *)v7 offset];
      data3 = [(MBDecoder *)v7 data];
      v22 = [data3 length];
    }

    while (offset3 < v22);
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  [(MBDatabase *)self version];
  return [NSString stringWithFormat:@"<%@: version=%0.1f>", v3, v4];
}

@end