@interface MBFile
+ (id)fileWithDecoder:(id)a3 database:(id)a4;
+ (id)fileWithDomain:(id)a3 relativePath:(id)a4;
+ (id)fileWithDomain:(id)a3 snapshotPath:(id)a4 relativePath:(id)a5;
- (BOOL)isStatusChangedComparedToFile:(id)a3;
- (MBFile)initWithCoder:(id)a3;
- (MBFile)initWithDecoder:(id)a3;
- (MBFile)initWithDecoder:(id)a3 database:(id)a4;
- (MBFile)initWithDomain:(id)a3 snapshotPath:(id)a4 relativePath:(id)a5;
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
- (void)encode:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getNode:(id *)a3;
- (void)getStat:(stat *)a3;
- (void)setNode:(id *)a3;
@end

@implementation MBFile

+ (id)fileWithDomain:(id)a3 snapshotPath:(id)a4 relativePath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MBFile alloc] initWithDomain:v9 snapshotPath:v8 relativePath:v7];

  return v10;
}

+ (id)fileWithDomain:(id)a3 relativePath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBFile alloc] initWithDomain:v6 snapshotPath:0 relativePath:v5];

  return v7;
}

+ (id)fileWithDecoder:(id)a3 database:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MBFile alloc] initWithDecoder:v6 database:v5];

  return v7;
}

- (MBFile)initWithDecoder:(id)a3
{
  [(MBFile *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MBFile)initWithDecoder:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = MBFile;
  v8 = [(MBFile *)&v38 init];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = [v6 decodeString];
  if (!v9)
  {
    v34 = [MBException alloc];
    v35 = @"Domain name missing from file record";
LABEL_20:
    v36 = [v34 initWithCode:11 format:{v35, v37}];
    goto LABEL_21;
  }

  v10 = v9;
  v11 = [v6 decodeString];
  nonRedirectedDomain = v8->_nonRedirectedDomain;
  v8->_nonRedirectedDomain = v11;

  v13 = v8->_nonRedirectedDomain;
  if ((MBIsValidRelativePath() & 1) == 0)
  {
    v34 = [MBException alloc];
    v35 = @"Invalid relative path in file record";
    goto LABEL_20;
  }

  v14 = [v7 domainManager];
  v15 = [v14 domainForName:v10];
  domain = v8->_domain;
  v8->_domain = v15;

  if (!v8->_domain)
  {
    v36 = [[MBException alloc] initWithCode:11 format:{@"Unknown domain name in file record: %@", v10}];
LABEL_21:
    objc_exception_throw(v36);
  }

  v17 = [v7 domainManager];
  v18 = [v17 redirectDomain:v8->_domain forRelativePath:v8->_nonRedirectedDomain];
  snapshotID = v8->_snapshotID;
  v8->_snapshotID = v18;

  v20 = [v6 decodeString];
  priority = v8->_priority;
  v8->_priority = v20;

  v22 = [v6 decodeData];
  target = v8->_target;
  v8->_target = v22;

  v24 = [v6 decodeData];
  digest = v8->_digest;
  v8->_digest = v24;

  WORD2(v8->_mbNode.cloneID) = [v6 decodeInt16];
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

  v8->_mbNode.inode = [v6 decodeInt64];
  v8->_mbNode.userID = [v6 decodeInt32];
  v8->_mbNode.groupID = [v6 decodeInt32];
  v8->_mbNode.modified = [v6 decodeInt32];
  v8->_mbNode.statusChanged = [v6 decodeInt32];
  v8->_mbNode.birth = [v6 decodeInt32];
  v8->_mbNode.fileSize = [v6 decodeInt64];
  if (![(MBFile *)v8 isRegularFile]&& v8->_mbNode.fileSize)
  {
    v34 = [MBException alloc];
    v35 = @"Non-zero size for a file record which is not a regular file";
    goto LABEL_20;
  }

  BYTE6(v8->_mbNode.cloneID) = [v6 decodeInt8];
  v26 = [v6 decodeInt8];
  v27 = [NSMutableDictionary dictionaryWithCapacity:v26];
  if (v26 >= 1)
  {
    while (1)
    {
      v28 = [v6 decodeString];
      if (!v28)
      {
        v34 = [MBException alloc];
        v35 = @"Null key for a file record extended attribute";
        goto LABEL_20;
      }

      v29 = v28;
      v30 = [v6 decodeData];
      if (!v30)
      {
        break;
      }

      v31 = v30;
      [v27 setObject:v30 forKeyedSubscript:v29];

      if (!--v26)
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

- (MBFile)initWithDomain:(id)a3 snapshotPath:(id)a4 relativePath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [v9 volumeMountPoint];
    if (!v12)
    {
      sub_10009E4E4();
    }
  }

  if (v9)
  {
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Null domain"];
    if (v11)
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
    objc_storeStrong(v13 + 17, a3);
    objc_storeStrong(&v14->_nonRedirectedDomain, a5);
    decryptedSize = v14->_decryptedSize;
    v14->_decryptedSize = &__NSDictionary0__struct;

    objc_storeStrong(&v14->_relativePath, a4);
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
    v3 = [(MBFile *)self absolutePath];
  }

  else
  {
    v4 = [self->_snapshotID name];
    v3 = [NSString stringWithFormat:@"%@:%@", v4, self->_nonRedirectedDomain];
  }

  v5 = [NSString stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, v3];;

  return v5;
}

- (NSString)debugDescription
{
  v24 = objc_opt_class();
  v23 = [(MBFile *)self fileID];
  v26 = [(MBFile *)self domain];
  v22 = [v26 name];
  v21 = [(MBFile *)self relativePath];
  v19 = [(MBFile *)self target];
  v27 = [(MBFile *)self digest];
  v18 = [(MBFile *)self encryptionKey];
  v13 = [(MBFile *)self modeString];
  v16 = [(MBFile *)self inodeNumber];
  v15 = [(MBFile *)self userID];
  v14 = [(MBFile *)self groupID];
  v20 = [(MBFile *)self lastModifiedDate];
  v12 = MBStringWithDate();
  v17 = [(MBFile *)self lastStatusChangeDate];
  v3 = MBStringWithDate();
  v4 = [(MBFile *)self birthDate];
  v5 = MBStringWithDate();
  v6 = [(MBFile *)self size];
  v7 = [(MBFile *)self protectionClass];
  v8 = [(MBFile *)self priority];
  v9 = [(MBFile *)self extendedAttributes];
  v10 = MBStringWithDictionary();
  v25 = [NSString stringWithFormat:@"<%@: fileID=%@, domain=%@, relativePath=%@, target=%@, digest=%@, encryptionKey=%@, mode=%@, inodeNumber=%llu, userID=%u, groupID=%u, lastModified=%@, lastStatusChange=%@, birth=%@, size=%llu, protectionClass=%d, priority=%lld extendedAttributes=%@>", v24, v23, v22, v21, v19, v27, v18, v13, v16, v15, v14, v12, v3, v5, v6, v7, v8, v10];

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
    v6 = [self->_snapshotID rootPath];
    v7 = v6;
    if (relativePath)
    {
      v8 = self->_relativePath;
      v9 = [self->_snapshotID volumeMountPoint];
      v10 = sub_100077FF4(v7, v8, v9);
      absolutePathFSR = self->_absolutePathFSR;
      self->_absolutePathFSR = v10;

      v12 = [self->_absolutePathFSR stringByAppendingPathComponent:self->_nonRedirectedDomain];
      v7 = self->_absolutePathFSR;
      self->_absolutePathFSR = v12;
    }

    else
    {
      v13 = [v6 stringByAppendingPathComponent:self->_nonRedirectedDomain];
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
    v3 = [(MBFile *)self absolutePath];

    if (v3)
    {
      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v3);
      v5 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
      *&self->_hasOverriddenModifiedDate = v5;
      if (!CFStringGetFileSystemRepresentation(v3, v5, MaximumSizeOfFileSystemRepresentation))
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

    v6 = [snapshotID rootPath];
    v7 = [v6 stringByAppendingPathComponent:self->_nonRedirectedDomain];
    v8 = self->_absolutePath;
    self->_absolutePath = v7;

    absolutePath = self->_absolutePath;
  }

  return absolutePath;
}

- (BOOL)isStatusChangedComparedToFile:(id)a3
{
  v6 = a3;
  v7 = [(MBFile *)self isSymbolicLink];
  if (v7 && (-[MBFile target](self, "target"), v3 = objc_claimAutoreleasedReturnValue(), [v6 target], v4 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v3, "isEqualToString:", v4)))
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v8 = [(MBFile *)self mode];
    if (v8 == [v6 mode] && (v9 = -[MBFile userID](self, "userID"), v9 == objc_msgSend(v6, "userID")) && (v10 = -[MBFile groupID](self, "groupID"), v10 == objc_msgSend(v6, "groupID")) && (v11 = -[MBFile protectionClass](self, "protectionClass"), v11 == objc_msgSend(v6, "protectionClass")))
    {
      v12 = [(MBFile *)self extendedAttributes];
      v13 = [v6 extendedAttributes];
      v14 = [v12 isEqualToDictionary:v13] ^ 1;

      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v14) = 1;
      if ((v7 & 1) == 0)
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

- (void)encode:(id)a3
{
  v4 = a3;
  v5 = [self->_snapshotID name];
  [v4 encodeString:v5];

  [v4 encodeString:self->_nonRedirectedDomain];
  [v4 encodeString:self->_priority];
  [v4 encodeData:self->_target];
  [v4 encodeData:self->_digest];
  [v4 encodeInt16:SWORD2(self->_mbNode.cloneID)];
  [v4 encodeInt64:self->_mbNode.inode];
  [v4 encodeInt32:self->_mbNode.userID];
  [v4 encodeInt32:self->_mbNode.groupID];
  [v4 encodeInt32:LODWORD(self->_mbNode.modified)];
  [v4 encodeInt32:LODWORD(self->_mbNode.statusChanged)];
  [v4 encodeInt32:LODWORD(self->_mbNode.birth)];
  [v4 encodeInt64:self->_mbNode.fileSize];
  [v4 encodeInt8:SBYTE6(self->_mbNode.cloneID)];
  if ([self->_decryptedSize count] >= 0x100)
  {
    sub_10009E7D4();
  }

  [v4 encodeInt8:{objc_msgSend(self->_decryptedSize, "count")}];
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
        [v4 encodeString:v11];
        [v4 encodeData:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v4 encodeInt32:sub_10008E580(&self->_mbNode)];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_nonRedirectedDomain forKey:@"RelativePath"];
  priority = self->_priority;
  if (priority)
  {
    [v4 encodeObject:priority forKey:@"Target"];
  }

  target = self->_target;
  if (target)
  {
    [v4 encodeObject:target forKey:@"Digest"];
  }

  digest = self->_digest;
  if (digest)
  {
    [v4 encodeObject:digest forKey:@"EncryptionKey"];
  }

  [v4 encodeInt32:WORD2(self->_mbNode.cloneID) forKey:@"Mode"];
  [v4 encodeInt64:self->_mbNode.inode forKey:@"InodeNumber"];
  [v4 encodeInt32:self->_mbNode.userID forKey:@"UserID"];
  [v4 encodeInt32:self->_mbNode.groupID forKey:@"GroupID"];
  [v4 encodeInt32:LODWORD(self->_mbNode.modified) forKey:@"LastModified"];
  [v4 encodeInt32:LODWORD(self->_mbNode.statusChanged) forKey:@"LastStatusChange"];
  [v4 encodeInt32:LODWORD(self->_mbNode.birth) forKey:@"Birth"];
  [v4 encodeInt64:self->_mbNode.fileSize forKey:@"Size"];
  [v4 encodeInt32:BYTE6(self->_mbNode.cloneID) forKey:@"ProtectionClass"];
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
        [v4 encodeObject:v10 forKey:@"ExtendedAttributes"];
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

  [v4 encodeInt32:sub_10008E580(&self->_mbNode) forKey:@"Flags"];
  objc_autoreleasePoolPop(v5);
}

- (MBFile)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MBFile;
  v5 = [(MBFile *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelativePath"];
    v7 = *(v5 + 19);
    *(v5 + 19) = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Target"];
    v9 = *(v5 + 22);
    *(v5 + 22) = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Digest"];
    v11 = *(v5 + 23);
    *(v5 + 23) = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EncryptionKey"];
    v13 = *(v5 + 24);
    *(v5 + 24) = v12;

    *(v5 + 38) = [v4 decodeInt32ForKey:@"Mode"];
    *(v5 + 7) = [v4 decodeInt64ForKey:@"InodeNumber"];
    *(v5 + 3) = [v4 decodeInt32ForKey:@"UserID"];
    *(v5 + 4) = [v4 decodeInt32ForKey:@"GroupID"];
    *(v5 + 4) = [v4 decodeInt32ForKey:@"LastModified"];
    *(v5 + 5) = [v4 decodeInt32ForKey:@"LastStatusChange"];
    *(v5 + 3) = [v4 decodeInt32ForKey:@"Birth"];
    *(v5 + 6) = [v4 decodeInt64ForKey:@"Size"];
    *(v5 + 78) = [v4 decodeInt32ForKey:@"ProtectionClass"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExtendedAttributes"];
    if (!v14)
    {
LABEL_11:
      sub_10008E588(v5 + 8, [v4 decodeInt32ForKey:{@"Flags", v20}]);

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

- (void)getNode:(id *)a3
{
  *&a3->var0 = *&self->_mbNode.direntCount;
  v3 = *&self->_mbNode.birth;
  v4 = *&self->_mbNode.statusChanged;
  v5 = *&self->_mbNode.inode;
  a3->var10 = self->_mbNode.cloneID;
  *&a3->var6 = v4;
  *&a3->var8 = v5;
  *&a3->var4 = v3;
}

- (NSString)itemID
{
  v2 = [(MBFile *)self fileID];
  v3 = [v2 string];

  return v3;
}

- (void)getStat:(stat *)a3
{
  *&a3->st_blksize = 0u;
  *a3->st_qspare = 0u;
  a3->st_birthtimespec = 0u;
  *&a3->st_size = 0u;
  a3->st_mtimespec = 0u;
  a3->st_ctimespec = 0u;
  *&a3->st_uid = 0u;
  a3->st_atimespec = 0u;
  *&a3->st_dev = 0u;
  v4 = WORD2(self->_mbNode.cloneID);
  fileSize = self->_mbNode.fileSize;
  inode = self->_mbNode.inode;
  birth = self->_mbNode.birth;
  modified = self->_mbNode.modified;
  statusChanged = self->_mbNode.statusChanged;
  v10 = *&self->_mbNode.userID;
  v11 = sub_10008E580(&self->_mbNode);
  a3->st_dev = 0;
  a3->st_mode = v4;
  a3->st_nlink = 0;
  a3->st_ino = inode;
  *&a3->st_uid = v10;
  a3->st_rdev = 0;
  *(&a3->st_rdev + 1) = v12;
  HIDWORD(a3->st_atimespec.tv_nsec) = 0;
  a3->st_mtimespec.tv_sec = modified;
  a3->st_mtimespec.tv_nsec = 0;
  a3->st_ctimespec.tv_sec = statusChanged;
  a3->st_ctimespec.tv_nsec = 0;
  a3->st_birthtimespec.tv_sec = birth;
  a3->st_birthtimespec.tv_nsec = 0;
  a3->st_size = fileSize;
  a3->st_blocks = 0;
  a3->st_blksize = 0;
  a3->st_flags = v11;
  *&a3->st_gen = 0;
  a3->st_qspare[0] = 0;
  a3->st_qspare[1] = 0;
}

- (void)setNode:(id *)a3
{
  *&self->_mbNode.direntCount = *&a3->var0;
  v3 = *&a3->var4;
  v4 = *&a3->var6;
  v5 = *&a3->var8;
  self->_mbNode.cloneID = a3->var10;
  *&self->_mbNode.inode = v5;
  *&self->_mbNode.statusChanged = v4;
  *&self->_mbNode.birth = v3;
}

@end