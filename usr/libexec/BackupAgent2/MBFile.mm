@interface MBFile
+ (id)fileWithDecoder:(id)decoder database:(id)database;
+ (id)fileWithDomain:(id)domain relativePath:(id)path;
+ (id)fileWithDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath;
- (BOOL)isStatusChangedComparedToFile:(id)file;
- (MBFile)initWithCoder:(id)coder;
- (MBFile)initWithDecoder:(id)decoder;
- (MBFile)initWithDecoder:(id)decoder database:(id)database;
- (MBFile)initWithDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath;
- (MBFileID)fileID;
- (NSString)absolutePath;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)itemID;
- (NSString)livePath;
- (const)absolutePathFSR;
- (const)keybagUUID;
- (id)backupSymbolicLinkTarget;
- (void)dealloc;
- (void)encode:(id)encode;
- (void)encodeWithCoder:(id)coder;
- (void)getNode:(id *)node;
- (void)getStat:(stat *)stat;
- (void)setNode:(id *)node;
@end

@implementation MBFile

+ (id)fileWithDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath
{
  relativePathCopy = relativePath;
  pathCopy = path;
  domainCopy = domain;
  v10 = [[MBFile alloc] initWithDomain:domainCopy snapshotPath:pathCopy relativePath:relativePathCopy];

  return v10;
}

+ (id)fileWithDomain:(id)domain relativePath:(id)path
{
  pathCopy = path;
  domainCopy = domain;
  v7 = [[MBFile alloc] initWithDomain:domainCopy snapshotPath:0 relativePath:pathCopy];

  return v7;
}

+ (id)fileWithDecoder:(id)decoder database:(id)database
{
  databaseCopy = database;
  decoderCopy = decoder;
  v7 = [[MBFile alloc] initWithDecoder:decoderCopy database:databaseCopy];

  return v7;
}

- (MBFile)initWithDecoder:(id)decoder
{
  [(MBFile *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MBFile)initWithDecoder:(id)decoder database:(id)database
{
  decoderCopy = decoder;
  databaseCopy = database;
  v38.receiver = self;
  v38.super_class = MBFile;
  v8 = [(MBFile *)&v38 init];
  if (!v8)
  {
    goto LABEL_17;
  }

  decodeString = [decoderCopy decodeString];
  if (!decodeString)
  {
    v34 = [MBException alloc];
    v35 = @"Domain name missing from file record";
LABEL_20:
    v36 = [v34 initWithCode:11 format:{v35, v37}];
    goto LABEL_21;
  }

  v10 = decodeString;
  decodeString2 = [decoderCopy decodeString];
  nonRedirectedDomain = v8->_nonRedirectedDomain;
  v8->_nonRedirectedDomain = decodeString2;

  v13 = v8->_nonRedirectedDomain;
  if ((MBIsValidRelativePath() & 1) == 0)
  {
    v34 = [MBException alloc];
    v35 = @"Invalid relative path in file record";
    goto LABEL_20;
  }

  domainManager = [databaseCopy domainManager];
  v15 = [domainManager domainForName:v10];
  domain = v8->_domain;
  v8->_domain = v15;

  if (!v8->_domain)
  {
    v36 = [[MBException alloc] initWithCode:11 format:{@"Unknown domain name in file record: %@", v10}];
LABEL_21:
    objc_exception_throw(v36);
  }

  domainManager2 = [databaseCopy domainManager];
  v18 = [domainManager2 redirectDomain:v8->_domain forRelativePath:v8->_nonRedirectedDomain];
  snapshotID = v8->_snapshotID;
  v8->_snapshotID = v18;

  decodeString3 = [decoderCopy decodeString];
  priority = v8->_priority;
  v8->_priority = decodeString3;

  decodeData = [decoderCopy decodeData];
  target = v8->_target;
  v8->_target = decodeData;

  decodeData2 = [decoderCopy decodeData];
  digest = v8->_digest;
  v8->_digest = decodeData2;

  WORD2(v8->_mbNode.cloneID) = [decoderCopy decodeInt16];
  if (![(MBFile *)v8 isRegularFile]&& ![(MBFile *)v8 isDirectory]&& ![(MBFile *)v8 isSymbolicLink])
  {
    v34 = [MBException alloc];
    v35 = @"File type missing from file record mode";
    goto LABEL_20;
  }

  if ([(MBFile *)v8 isSymbolicLink]&& !v8->_priority)
  {
    v34 = [MBException alloc];
    v35 = @"Target required for symbolic links";
    goto LABEL_20;
  }

  v8->_mbNode.inode = [decoderCopy decodeInt64];
  v8->_mbNode.userID = [decoderCopy decodeInt32];
  v8->_mbNode.groupID = [decoderCopy decodeInt32];
  v8->_mbNode.modified = [decoderCopy decodeInt32];
  v8->_mbNode.statusChanged = [decoderCopy decodeInt32];
  v8->_mbNode.birth = [decoderCopy decodeInt32];
  v8->_mbNode.fileSize = [decoderCopy decodeInt64];
  if (![(MBFile *)v8 isRegularFile]&& v8->_mbNode.fileSize)
  {
    v34 = [MBException alloc];
    v35 = @"Non-zero size for a file record which is not a regular file";
    goto LABEL_20;
  }

  BYTE6(v8->_mbNode.cloneID) = [decoderCopy decodeInt8];
  decodeInt8 = [decoderCopy decodeInt8];
  v27 = [NSMutableDictionary dictionaryWithCapacity:decodeInt8];
  if (decodeInt8 >= 1)
  {
    while (1)
    {
      decodeString4 = [decoderCopy decodeString];
      if (!decodeString4)
      {
        v34 = [MBException alloc];
        v35 = @"Null key for a file record extended attribute";
        goto LABEL_20;
      }

      v29 = decodeString4;
      decodeData3 = [decoderCopy decodeData];
      if (!decodeData3)
      {
        break;
      }

      v31 = decodeData3;
      [v27 setObject:decodeData3 forKeyedSubscript:v29];

      if (!--decodeInt8)
      {
        goto LABEL_16;
      }
    }

    v34 = [MBException alloc];
    v35 = @"Null value for a file record extended attribute";
    goto LABEL_20;
  }

LABEL_16:
  decryptedSize = v8->_decryptedSize;
  v8->_decryptedSize = v27;

LABEL_17:
  return v8;
}

- (MBFile)initWithDomain:(id)domain snapshotPath:(id)path relativePath:(id)relativePath
{
  domainCopy = domain;
  pathCopy = path;
  relativePathCopy = relativePath;
  if (pathCopy)
  {
    volumeMountPoint = [domainCopy volumeMountPoint];
    if (!volumeMountPoint)
    {
      sub_10009E4E4();
    }
  }

  if (domainCopy)
  {
    if (relativePathCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Null domain"];
    if (relativePathCopy)
    {
      goto LABEL_6;
    }
  }

  [NSException raise:NSInvalidArgumentException format:@"Null relative path"];
LABEL_6:
  v17.receiver = self;
  v17.super_class = MBFile;
  v13 = [(MBFile *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 17, domain);
    objc_storeStrong(&v14->_nonRedirectedDomain, relativePath);
    decryptedSize = v14->_decryptedSize;
    v14->_decryptedSize = &__NSDictionary0__struct;

    objc_storeStrong(&v14->_relativePath, path);
  }

  return v14;
}

- (void)dealloc
{
  v3 = *&self->_hasOverriddenModifiedDate;
  if (v3)
  {
    free(v3);
  }

  v4.receiver = self;
  v4.super_class = MBFile;
  [(MBFile *)&v4 dealloc];
}

- (NSString)description
{
  if ([self->_snapshotID hasRootPath])
  {
    absolutePath = [(MBFile *)self absolutePath];
  }

  else
  {
    name = [self->_snapshotID name];
    absolutePath = [NSString stringWithFormat:@"%@:%@", name, self->_nonRedirectedDomain];
  }

  v5 = [NSString stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, absolutePath];;

  return v5;
}

- (NSString)debugDescription
{
  v24 = objc_opt_class();
  fileID = [(MBFile *)self fileID];
  domain = [(MBFile *)self domain];
  name = [domain name];
  relativePath = [(MBFile *)self relativePath];
  target = [(MBFile *)self target];
  digest = [(MBFile *)self digest];
  encryptionKey = [(MBFile *)self encryptionKey];
  modeString = [(MBFile *)self modeString];
  inodeNumber = [(MBFile *)self inodeNumber];
  userID = [(MBFile *)self userID];
  groupID = [(MBFile *)self groupID];
  lastModifiedDate = [(MBFile *)self lastModifiedDate];
  v12 = MBStringWithDate();
  lastStatusChangeDate = [(MBFile *)self lastStatusChangeDate];
  v3 = MBStringWithDate();
  birthDate = [(MBFile *)self birthDate];
  v5 = MBStringWithDate();
  v6 = [(MBFile *)self size];
  protectionClass = [(MBFile *)self protectionClass];
  priority = [(MBFile *)self priority];
  extendedAttributes = [(MBFile *)self extendedAttributes];
  v10 = MBStringWithDictionary();
  v25 = [NSString stringWithFormat:@"<%@: fileID=%@, domain=%@, relativePath=%@, target=%@, digest=%@, encryptionKey=%@, mode=%@, inodeNumber=%llu, userID=%u, groupID=%u, lastModified=%@, lastStatusChange=%@, birth=%@, size=%llu, protectionClass=%d, priority=%lld extendedAttributes=%@>", v24, fileID, name, relativePath, target, digest, encryptionKey, modeString, inodeNumber, userID, groupID, v12, v3, v5, v6, protectionClass, priority, v10];

  return v25;
}

- (MBFileID)fileID
{
  v3 = *&self->_mbNode.mode;
  if (!v3)
  {
    v4 = [[MBFileID alloc] initWithDomain:self->_snapshotID relativePath:self->_nonRedirectedDomain];
    v5 = *&self->_mbNode.mode;
    *&self->_mbNode.mode = v4;

    v3 = *&self->_mbNode.mode;
  }

  return v3;
}

- (NSString)absolutePath
{
  if (!self->_absolutePathFSR)
  {
    snapshotID = self->_snapshotID;
    if (!snapshotID)
    {
      sub_10009E510();
      snapshotID = v17;
    }

    if ([snapshotID isUninstalledAppDomain])
    {
      sub_10009E580(&self->_snapshotID, self, a2);
    }

    relativePath = self->_relativePath;
    rootPath = [self->_snapshotID rootPath];
    v7 = rootPath;
    if (relativePath)
    {
      v8 = self->_relativePath;
      volumeMountPoint = [self->_snapshotID volumeMountPoint];
      v10 = sub_100077FF4(v7, v8, volumeMountPoint);
      absolutePathFSR = self->_absolutePathFSR;
      self->_absolutePathFSR = v10;

      v12 = [self->_absolutePathFSR stringByAppendingPathComponent:self->_nonRedirectedDomain];
      v7 = self->_absolutePathFSR;
      self->_absolutePathFSR = v12;
    }

    else
    {
      v13 = [rootPath stringByAppendingPathComponent:self->_nonRedirectedDomain];
      v14 = self->_absolutePathFSR;
      self->_absolutePathFSR = v13;
    }
  }

  v15 = self->_absolutePathFSR;

  return v15;
}

- (const)absolutePathFSR
{
  if (!*&self->_hasOverriddenModifiedDate)
  {
    absolutePath = [(MBFile *)self absolutePath];

    if (absolutePath)
    {
      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(absolutePath);
      v5 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
      *&self->_hasOverriddenModifiedDate = v5;
      if (!CFStringGetFileSystemRepresentation(absolutePath, v5, MaximumSizeOfFileSystemRepresentation))
      {
        sub_10009E620();
      }
    }
  }

  return *&self->_hasOverriddenModifiedDate;
}

- (NSString)livePath
{
  absolutePath = self->_absolutePath;
  if (!absolutePath)
  {
    p_snapshotID = &self->_snapshotID;
    snapshotID = self->_snapshotID;
    if (!snapshotID)
    {
      sub_10009E68C();
      snapshotID = v10;
    }

    rootPath = [snapshotID rootPath];
    v7 = [rootPath stringByAppendingPathComponent:self->_nonRedirectedDomain];
    v8 = self->_absolutePath;
    self->_absolutePath = v7;

    absolutePath = self->_absolutePath;
  }

  return absolutePath;
}

- (BOOL)isStatusChangedComparedToFile:(id)file
{
  fileCopy = file;
  isSymbolicLink = [(MBFile *)self isSymbolicLink];
  if (isSymbolicLink && (-[MBFile target](self, "target"), v3 = objc_claimAutoreleasedReturnValue(), [fileCopy target], v4 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v3, "isEqualToString:", v4)))
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    mode = [(MBFile *)self mode];
    if (mode == [fileCopy mode] && (v9 = -[MBFile userID](self, "userID"), v9 == objc_msgSend(fileCopy, "userID")) && (v10 = -[MBFile groupID](self, "groupID"), v10 == objc_msgSend(fileCopy, "groupID")) && (v11 = -[MBFile protectionClass](self, "protectionClass"), v11 == objc_msgSend(fileCopy, "protectionClass")))
    {
      extendedAttributes = [(MBFile *)self extendedAttributes];
      extendedAttributes2 = [fileCopy extendedAttributes];
      v14 = [extendedAttributes isEqualToDictionary:extendedAttributes2] ^ 1;

      if (!isSymbolicLink)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v14) = 1;
      if ((isSymbolicLink & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  return v14;
}

- (id)backupSymbolicLinkTarget
{
  if (![(MBFile *)self isSymbolicLink])
  {
    sub_10009E6FC();
  }

  if (self->_priority)
  {
    sub_10009E768();
  }

  v8 = 0;
  v3 = [MBFileOperation symbolicLinkTargetWithPathFSR:[(MBFile *)self absolutePathFSR] error:&v8];
  v4 = v8;
  priority = self->_priority;
  self->_priority = v3;

  v6 = 0;
  if (!self->_priority)
  {
    v6 = v4;
  }

  return v6;
}

- (const)keybagUUID
{
  if (self->_encryptionKey < 2 || [(NSData *)self->_digest length]< 0x10)
  {
    return 0;
  }

  digest = self->_digest;

  return [(NSData *)digest bytes];
}

- (void)encode:(id)encode
{
  encodeCopy = encode;
  name = [self->_snapshotID name];
  [encodeCopy encodeString:name];

  [encodeCopy encodeString:self->_nonRedirectedDomain];
  [encodeCopy encodeString:self->_priority];
  [encodeCopy encodeData:self->_target];
  [encodeCopy encodeData:self->_digest];
  [encodeCopy encodeInt16:SWORD2(self->_mbNode.cloneID)];
  [encodeCopy encodeInt64:self->_mbNode.inode];
  [encodeCopy encodeInt32:self->_mbNode.userID];
  [encodeCopy encodeInt32:self->_mbNode.groupID];
  [encodeCopy encodeInt32:LODWORD(self->_mbNode.modified)];
  [encodeCopy encodeInt32:LODWORD(self->_mbNode.statusChanged)];
  [encodeCopy encodeInt32:LODWORD(self->_mbNode.birth)];
  [encodeCopy encodeInt64:self->_mbNode.fileSize];
  [encodeCopy encodeInt8:SBYTE6(self->_mbNode.cloneID)];
  if ([self->_decryptedSize count] >= 0x100)
  {
    sub_10009E7D4();
  }

  [encodeCopy encodeInt8:{objc_msgSend(self->_decryptedSize, "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_decryptedSize;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [self->_decryptedSize objectForKeyedSubscript:{v11, v13}];
        [encodeCopy encodeString:v11];
        [encodeCopy encodeData:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [encodeCopy encodeInt32:sub_10008E580(&self->_mbNode)];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_nonRedirectedDomain forKey:@"RelativePath"];
  priority = self->_priority;
  if (priority)
  {
    [coderCopy encodeObject:priority forKey:@"Target"];
  }

  target = self->_target;
  if (target)
  {
    [coderCopy encodeObject:target forKey:@"Digest"];
  }

  digest = self->_digest;
  if (digest)
  {
    [coderCopy encodeObject:digest forKey:@"EncryptionKey"];
  }

  [coderCopy encodeInt32:WORD2(self->_mbNode.cloneID) forKey:@"Mode"];
  [coderCopy encodeInt64:self->_mbNode.inode forKey:@"InodeNumber"];
  [coderCopy encodeInt32:self->_mbNode.userID forKey:@"UserID"];
  [coderCopy encodeInt32:self->_mbNode.groupID forKey:@"GroupID"];
  [coderCopy encodeInt32:LODWORD(self->_mbNode.modified) forKey:@"LastModified"];
  [coderCopy encodeInt32:LODWORD(self->_mbNode.statusChanged) forKey:@"LastStatusChange"];
  [coderCopy encodeInt32:LODWORD(self->_mbNode.birth) forKey:@"Birth"];
  [coderCopy encodeInt64:self->_mbNode.fileSize forKey:@"Size"];
  [coderCopy encodeInt32:BYTE6(self->_mbNode.cloneID) forKey:@"ProtectionClass"];
  if ([self->_decryptedSize count])
  {
    decryptedSize = self->_decryptedSize;
    v14 = 0;
    v10 = [NSPropertyListSerialization dataWithPropertyList:decryptedSize format:200 options:0 error:&v14];
    v11 = v14;
    v12 = v11;
    if (v10 || !v11)
    {
      if (v10)
      {
        [coderCopy encodeObject:v10 forKey:@"ExtendedAttributes"];
      }
    }

    else
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to serialize extended attributes: %@", buf, 0xCu);
        _MBLog();
      }
    }
  }

  [coderCopy encodeInt32:sub_10008E580(&self->_mbNode) forKey:@"Flags"];
  objc_autoreleasePoolPop(v5);
}

- (MBFile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MBFile;
  v5 = [(MBFile *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelativePath"];
    v7 = *(v5 + 19);
    *(v5 + 19) = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Target"];
    v9 = *(v5 + 22);
    *(v5 + 22) = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Digest"];
    v11 = *(v5 + 23);
    *(v5 + 23) = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EncryptionKey"];
    v13 = *(v5 + 24);
    *(v5 + 24) = v12;

    *(v5 + 38) = [coderCopy decodeInt32ForKey:@"Mode"];
    *(v5 + 7) = [coderCopy decodeInt64ForKey:@"InodeNumber"];
    *(v5 + 3) = [coderCopy decodeInt32ForKey:@"UserID"];
    *(v5 + 4) = [coderCopy decodeInt32ForKey:@"GroupID"];
    *(v5 + 4) = [coderCopy decodeInt32ForKey:@"LastModified"];
    *(v5 + 5) = [coderCopy decodeInt32ForKey:@"LastStatusChange"];
    *(v5 + 3) = [coderCopy decodeInt32ForKey:@"Birth"];
    *(v5 + 6) = [coderCopy decodeInt64ForKey:@"Size"];
    *(v5 + 78) = [coderCopy decodeInt32ForKey:@"ProtectionClass"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExtendedAttributes"];
    if (!v14)
    {
LABEL_11:
      sub_10008E588(v5 + 8, [coderCopy decodeInt32ForKey:{@"Flags", v20}]);

      goto LABEL_12;
    }

    v21 = 0;
    v15 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:&v21];
    v16 = v21;
    if (!v16 || v15)
    {
      if (!v15)
      {
LABEL_10:

        goto LABEL_11;
      }

      v18 = v15;
      v17 = *(v5 + 27);
      *(v5 + 27) = v18;
    }

    else
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to deserialize extended attributes: %@", buf, 0xCu);
        v20 = v16;
        _MBLog();
      }
    }

    goto LABEL_10;
  }

LABEL_12:

  return v5;
}

- (void)getNode:(id *)node
{
  *&node->var0 = *&self->_mbNode.direntCount;
  v3 = *&self->_mbNode.birth;
  v4 = *&self->_mbNode.statusChanged;
  v5 = *&self->_mbNode.inode;
  node->var10 = self->_mbNode.cloneID;
  *&node->var6 = v4;
  *&node->var8 = v5;
  *&node->var4 = v3;
}

- (NSString)itemID
{
  fileID = [(MBFile *)self fileID];
  string = [fileID string];

  return string;
}

- (void)getStat:(stat *)stat
{
  *&stat->st_blksize = 0u;
  *stat->st_qspare = 0u;
  stat->st_birthtimespec = 0u;
  *&stat->st_size = 0u;
  stat->st_mtimespec = 0u;
  stat->st_ctimespec = 0u;
  *&stat->st_uid = 0u;
  stat->st_atimespec = 0u;
  *&stat->st_dev = 0u;
  v4 = WORD2(self->_mbNode.cloneID);
  fileSize = self->_mbNode.fileSize;
  inode = self->_mbNode.inode;
  birth = self->_mbNode.birth;
  modified = self->_mbNode.modified;
  statusChanged = self->_mbNode.statusChanged;
  v10 = *&self->_mbNode.userID;
  v11 = sub_10008E580(&self->_mbNode);
  stat->st_dev = 0;
  stat->st_mode = v4;
  stat->st_nlink = 0;
  stat->st_ino = inode;
  *&stat->st_uid = v10;
  stat->st_rdev = 0;
  *(&stat->st_rdev + 1) = v12;
  HIDWORD(stat->st_atimespec.tv_nsec) = 0;
  stat->st_mtimespec.tv_sec = modified;
  stat->st_mtimespec.tv_nsec = 0;
  stat->st_ctimespec.tv_sec = statusChanged;
  stat->st_ctimespec.tv_nsec = 0;
  stat->st_birthtimespec.tv_sec = birth;
  stat->st_birthtimespec.tv_nsec = 0;
  stat->st_size = fileSize;
  stat->st_blocks = 0;
  stat->st_blksize = 0;
  stat->st_flags = v11;
  *&stat->st_gen = 0;
  stat->st_qspare[0] = 0;
  stat->st_qspare[1] = 0;
}

- (void)setNode:(id *)node
{
  *&self->_mbNode.direntCount = *&node->var0;
  v3 = *&node->var4;
  v4 = *&node->var6;
  v5 = *&node->var8;
  self->_mbNode.cloneID = node->var10;
  *&self->_mbNode.inode = v5;
  *&self->_mbNode.statusChanged = v4;
  *&self->_mbNode.birth = v3;
}

@end