@interface smbNode
+ (id)fileHandleForIno:(unint64_t)ino;
+ (unsigned)getAttrTimeout:(timespec)timeout lastModified:(timespec)modified;
- (BOOL)getMaxAccessAttr:(unsigned int *)attr;
- (BOOL)isDir;
- (BOOL)isReg;
- (BOOL)isRevoked;
- (BOOL)isSymlink;
- (BOOL)isViable;
- (BOOL)isZombie;
- (BOOL)reopenChangeNotify:(id)notify;
- (BOOL)reopenFileNodes;
- (id)fileRefForRead;
- (id)fileRefForWrite;
- (id)findSharedFileRef:(unsigned int)ref;
- (id)getDirEnumerator:(int *)enumerator;
- (id)makeSillyDeleteName;
- (id)symlinkTargetCache;
- (int)prepareForReclaimSync;
- (int)reopenDenyModeRefs;
- (int)reopenFileRef:(id)ref;
- (int)reopenSharedRefs;
- (smbNode)initWithName:(id)name andParent:(id)parent andAttr:(smbfattr *)attr;
- (timespec)symlinkRefreshTime;
- (unint64_t)getReadDirVerifier;
- (void)addChangeNotify:(id)notify NotifyHandler:(id)handler;
- (void)addNewFileRef:(id)ref;
- (void)clearChangeNotify:(BOOL)notify completionHandler:(id)handler;
- (void)closeAllFileRefs:(id)refs;
- (void)closeFileRefInternal:(id)internal CompletionHandler:(id)handler;
- (void)closeFileRefWithMode:(unsigned int)mode CompletionHandler:(id)handler;
- (void)dealloc;
- (void)decDirRefCount;
- (void)fetchAttrDataWithCompletionHandler:(id)handler;
- (void)incDirRefCount;
- (void)invalidateAttrs;
- (void)prepareForReclaim:(id)reclaim;
- (void)prepareForReconnect;
- (void)refreshAttrsWithCompletionHandler:(id)handler;
- (void)setMaxAccessAttr:(unsigned int)attr;
- (void)setReparseSymLink:(id)link;
- (void)setRevokedState:(BOOL)state;
- (void)setWindowsSymLink:(id)link;
- (void)setZombieState:(BOOL)state;
- (void)updateFileID;
@end

@implementation smbNode

- (smbNode)initWithName:(id)name andParent:(id)parent andAttr:(smbfattr *)attr
{
  nameCopy = name;
  parentCopy = parent;
  v46.receiver = self;
  v46.super_class = smbNode;
  v11 = [(smbNode *)&v46 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->fa_max_access_valid = 0;
    v12->maxAccessTime.tv_sec = 0;
    v12->maxAccessTime.tv_nsec = 0;
    attrDataCache = v12->attrDataCache;
    v12->attrDataCache = 0;

    v12->_np_flag = 0;
    v14 = dispatch_queue_create("com.apple.SMBProvider.fileRefSyncQueue", 0);
    fileRefSyncQueue = v12->_fileRefSyncQueue;
    v12->_fileRefSyncQueue = v14;

    v16 = dispatch_queue_create("com.apple.SMBProvider.xattrIOSyncQueue", 0);
    xattrIOQueue = v12->_xattrIOQueue;
    v12->_xattrIOQueue = v16;

    v18 = objc_alloc_init(NSLock);
    metaLock = v12->_metaLock;
    v12->_metaLock = v18;

    symlinkTargetStr = v12->_symlinkTargetStr;
    v12->_symlinkTargetStr = 0;

    v12->_symlinkTargetLen = 0;
    *&v12->_openFileRefs = 0;
    v12->_interestedClients = 0;
    v12->_np_flag = 0;
    v12->_symlinkRefreshTime.tv_sec = 0;
    v12->_symlinkRefreshTime.tv_nsec = 0;
    Read_fileRef = v12->_Read_fileRef;
    v12->_Read_fileRef = 0;

    ReadWrite_fileRef = v12->_ReadWrite_fileRef;
    v12->_ReadWrite_fileRef = 0;

    Write_fileRef = v12->_Write_fileRef;
    v12->_Write_fileRef = 0;

    v24 = objc_alloc_init(NSMutableDictionary);
    filerefCache = v12->_filerefCache;
    v12->_filerefCache = v24;

    if (v12->_filerefCache)
    {
      v26 = [LiveFSXattrCache xattrCacheWithMaxItems:4 maxItemSize:64 andEntryLifetimeInSeconds:5];
      xattrCache = v12->_xattrCache;
      v12->_xattrCache = v26;

      changeNotifyFileRef = v12->_changeNotifyFileRef;
      v12->_changeNotifyFileRef = 0;

      *&v12->changeNotifyArgs.change_notify_parms.ntStatus = 0;
      *&v12->changeNotifyArgs.filter = 0;
      v29 = *&attr->fa_valid_mask;
      v30 = *&attr->fa_size;
      v12->fattr.fa_atime = attr->fa_atime;
      *&v12->fattr.fa_size = v30;
      *&v12->fattr.fa_valid_mask = v29;
      fa_chtime = attr->fa_chtime;
      fa_mtime = attr->fa_mtime;
      fa_crtime = attr->fa_crtime;
      *&v12->fattr.fa_ino = *&attr->fa_ino;
      v12->fattr.fa_crtime = fa_crtime;
      v12->fattr.fa_mtime = fa_mtime;
      v12->fattr.fa_chtime = fa_chtime;
      v34 = *&attr->fa_reqtime.tv_nsec;
      v35 = *&attr->fa_uid;
      v36 = *&attr->fa_permissions;
      *&v12->fattr.fa_flags_mask = *&attr->fa_flags_mask;
      *&v12->fattr.fa_permissions = v36;
      *&v12->fattr.fa_uid = v35;
      *&v12->fattr.fa_reqtime.tv_nsec = v34;
      v37 = *&attr->fa_created_disp;
      v38 = *&attr->fa_rsrc_alloc;
      v39 = *&attr->fa_finder_info[8];
      *&v12->fattr.fa_finder_info[24] = *&attr->fa_finder_info[24];
      *&v12->fattr.fa_finder_info[8] = v39;
      *&v12->fattr.fa_rsrc_alloc = v38;
      *&v12->fattr.fa_created_disp = v37;
      clock_gettime(_CLOCK_REALTIME, &v12->attrTime);
      if ((v12->fattr.fa_valid_mask & 0x40) != 0)
      {
        v12->fa_max_access_valid = 1;
        v12->fa_max_access = v12->fattr.fa_max_access;
        clock_gettime(_CLOCK_REALTIME, &v12->maxAccessTime);
      }

      p_parent = &v12->_parent;
      if (parentCopy)
      {
        objc_storeStrong(p_parent, parent);
        v41 = [parentCopy mp];
        v42 = 0;
      }

      else
      {
        objc_storeStrong(p_parent, v12);
        v41 = 0;
        v42 = 1;
      }

      mp = v12->_mp;
      v12->_mp = v41;

      v12->_isRoot = v42;
      v12->_dirRefCount = 0;
      dirEnum = v12->dirEnum;
      v12->dirEnum = 0;

      [(smbNode *)v12 updateFileID];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005795C();
      }

      v12 = 0;
    }
  }

  return v12;
}

- (void)updateFileID
{
  mp = self->_mp;
  if (mp)
  {
    getNextFileID = [(smbMount *)mp getNextFileID];
    self->fattr.fa_ino = getNextFileID;
    v5 = [smbNode fileHandleForIno:getNextFileID];
    fh = self->_fh;
    self->_fh = v5;

    _objc_release_x1();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000579A0();
    }

    self->fattr.fa_ino = 0;
  }
}

- (BOOL)isDir
{
  [(NSLock *)self->_metaLock lock];
  v3 = self->fattr.fa_vtype == 2;
  [(NSLock *)self->_metaLock unlock];
  return v3;
}

- (BOOL)isReg
{
  [(NSLock *)self->_metaLock lock];
  v3 = self->fattr.fa_vtype == 1;
  [(NSLock *)self->_metaLock unlock];
  return v3;
}

- (BOOL)isSymlink
{
  [(NSLock *)self->_metaLock lock];
  v3 = self->fattr.fa_vtype == 5;
  [(NSLock *)self->_metaLock unlock];
  return v3;
}

- (BOOL)isZombie
{
  [(NSLock *)self->_metaLock lock];
  v3 = (self->_np_flag >> 2) & 1;
  [(NSLock *)self->_metaLock unlock];
  return v3;
}

- (void)setZombieState:(BOOL)state
{
  stateCopy = state;
  [(NSLock *)self->_metaLock lock];
  if (stateCopy)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  self->_np_flag = self->_np_flag & 0xFFFFFFFB | v5;
  metaLock = self->_metaLock;

  [(NSLock *)metaLock unlock];
}

- (void)setRevokedState:(BOOL)state
{
  stateCopy = state;
  [(NSLock *)self->_metaLock lock];
  if (stateCopy)
  {
    v5 = 268435464;
  }

  else
  {
    v5 = 0;
  }

  self->_np_flag = self->_np_flag & 0xEFFFFFF7 | v5;
  metaLock = self->_metaLock;

  [(NSLock *)metaLock unlock];
}

- (BOOL)isViable
{
  [(NSLock *)self->_metaLock lock];
  v3 = (self->_np_flag & 0x1000000C) == 0;
  [(NSLock *)self->_metaLock unlock];
  return v3;
}

- (BOOL)isRevoked
{
  [(NSLock *)self->_metaLock lock];
  isRevokedLocked = [(smbNode *)self isRevokedLocked];
  [(NSLock *)self->_metaLock unlock];
  return isRevokedLocked;
}

- (void)setWindowsSymLink:(id)link
{
  self->fattr.fa_vtype = 5;
  self->fattr.fa_valid_mask |= 1uLL;
  self->_np_flag = self->_np_flag & 0xFFFFFFFC | 1;
  objc_storeStrong(&self->_symlinkTargetStr, link);
  linkCopy = link;
  v6 = [linkCopy length];

  self->_symlinkTargetLen = v6;

  clock_gettime(_CLOCK_REALTIME, &self->_symlinkRefreshTime);
}

- (void)setReparseSymLink:(id)link
{
  self->fattr.fa_vtype = 5;
  self->fattr.fa_valid_mask |= 1uLL;
  self->_np_flag = self->_np_flag & 0xFFFFFFFC | 2;
  objc_storeStrong(&self->_symlinkTargetStr, link);
  linkCopy = link;
  v6 = [linkCopy length];

  self->_symlinkTargetLen = v6;

  clock_gettime(_CLOCK_REALTIME, &self->_symlinkRefreshTime);
}

- (id)symlinkTargetCache
{
  v6.tv_sec = 0;
  v6.tv_nsec = 0;
  [(NSLock *)self->_metaLock lock];
  if (self->_symlinkTargetStr)
  {
    if (clock_gettime(_CLOCK_REALTIME, &v6))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000579E4();
      }
    }

    else
    {
      v3 = [smbNode getAttrTimeout:v6.tv_sec lastModified:v6.tv_nsec, self->fattr.fa_mtime.tv_sec, self->fattr.fa_mtime.tv_nsec];
      if (v6.tv_sec - self->_symlinkRefreshTime.tv_sec < v3)
      {
        v4 = self->_symlinkTargetStr;
        goto LABEL_8;
      }
    }
  }

  v4 = 0;
LABEL_8:
  [(NSLock *)self->_metaLock unlock];

  return v4;
}

- (void)incDirRefCount
{
  [(NSLock *)self->_metaLock lock];
  ++self->_dirRefCount;
  metaLock = self->_metaLock;

  [(NSLock *)metaLock unlock];
}

- (void)decDirRefCount
{
  [(NSLock *)self->_metaLock lock];
  dirRefCount = self->_dirRefCount;
  if (dirRefCount)
  {
    self->_dirRefCount = dirRefCount - 1;
  }

  else
  {
    NSLog(@"decDirRefCount: Warning, smbNode: %@, dirRefCount is zero, cannot decrement", self->_name);
  }

  metaLock = self->_metaLock;

  [(NSLock *)metaLock unlock];
}

- (id)findSharedFileRef:(unsigned int)ref
{
  if ((ref & 3) <= 1)
  {
    if ((ref & 3) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100057A68();
      }

      goto LABEL_14;
    }

    read_fileRef = [(smbNode *)self Read_fileRef];

    if (read_fileRef)
    {
      read_fileRef2 = [(smbNode *)self Read_fileRef];
      goto LABEL_12;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if ((ref & 3) == 2)
  {
    write_fileRef = [(smbNode *)self Write_fileRef];

    if (write_fileRef)
    {
      read_fileRef2 = [(smbNode *)self Write_fileRef];
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  readWrite_fileRef = [(smbNode *)self ReadWrite_fileRef];

  if (!readWrite_fileRef)
  {
    goto LABEL_14;
  }

  read_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
LABEL_12:
  v8 = read_fileRef2;
  if (read_fileRef2)
  {
    [read_fileRef2 addRef];
  }

LABEL_15:

  return v8;
}

- (id)fileRefForRead
{
  read_fileRef = [(smbNode *)self Read_fileRef];

  if (read_fileRef)
  {
    read_fileRef2 = [(smbNode *)self Read_fileRef];
  }

  else
  {
    readWrite_fileRef = [(smbNode *)self ReadWrite_fileRef];

    if (!readWrite_fileRef)
    {
      v6 = 0;
      goto LABEL_8;
    }

    read_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
  }

  v6 = read_fileRef2;
  if (read_fileRef2)
  {
    [read_fileRef2 addRef];
  }

LABEL_8:

  return v6;
}

- (id)fileRefForWrite
{
  write_fileRef = [(smbNode *)self Write_fileRef];

  if (write_fileRef)
  {
    write_fileRef2 = [(smbNode *)self Write_fileRef];
  }

  else
  {
    readWrite_fileRef = [(smbNode *)self ReadWrite_fileRef];

    if (!readWrite_fileRef)
    {
      v6 = 0;
      goto LABEL_8;
    }

    write_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
  }

  v6 = write_fileRef2;
  if (write_fileRef2)
  {
    [write_fileRef2 addRef];
  }

LABEL_8:

  return v6;
}

- (void)addNewFileRef:(id)ref
{
  refCopy = ref;
  v4 = [refCopy openMode] & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      [(smbNode *)self setWrite_fileRef:refCopy];
    }

    else
    {
      [(smbNode *)self setReadWrite_fileRef:refCopy];
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    [(smbNode *)self setRead_fileRef:refCopy];
  }

  [(smbNode *)self lockMeta];
  [(smbNode *)self setOpenFileRefs:[(smbNode *)self openFileRefs]+ 1];
  [(smbNode *)self unlockMeta];
  v5 = [(smbNode *)self mp];
  [v5 increaseOpenFileCount:1];

LABEL_8:
}

- (void)closeFileRefWithMode:(unsigned int)mode CompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_group_create();
  v8 = dispatch_queue_create("com.apple.SMBProvider.closeRefQueue", 0);
  if ((mode & 3) == 2)
  {
    read_fileRef = [(smbNode *)self Read_fileRef];

    if (read_fileRef)
    {
      read_fileRef2 = [(smbNode *)self Read_fileRef];
      [(smbNode *)self setRead_fileRef:0];
      [(smbNode *)self lockMeta];
      if ([(smbNode *)self openFileRefs])
      {
        [(smbNode *)self setOpenFileRefs:[(smbNode *)self openFileRefs]- 1];
      }

      [(smbNode *)self unlockMeta];
      dispatch_group_enter(v7);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10002D158;
      v35[3] = &unk_10008D550;
      v35[4] = self;
      read_fileRef = read_fileRef2;
      v36 = read_fileRef;
      v37 = v7;
      dispatch_async(v8, v35);

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    readWrite_fileRef = [(smbNode *)self ReadWrite_fileRef];

    if (!readWrite_fileRef)
    {
      v15 = 0;
      if (!v12)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v24 = handlerCopy;
    readWrite_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
    [(smbNode *)self setReadWrite_fileRef:0];
    [(smbNode *)self lockMeta];
    if ([(smbNode *)self openFileRefs])
    {
      [(smbNode *)self setOpenFileRefs:[(smbNode *)self openFileRefs]- 1];
    }

    [(smbNode *)self unlockMeta];
    dispatch_group_enter(v7);
    readWrite_fileRef = 0;
    v17 = v34;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v18 = sub_10002D1F0;
    goto LABEL_24;
  }

  if ((mode & 3) == 1)
  {
    write_fileRef = [(smbNode *)self Write_fileRef];

    v24 = handlerCopy;
    if (write_fileRef)
    {
      write_fileRef2 = [(smbNode *)self Write_fileRef];
      [(smbNode *)self setWrite_fileRef:0];
      [(smbNode *)self lockMeta];
      if ([(smbNode *)self openFileRefs])
      {
        [(smbNode *)self setOpenFileRefs:[(smbNode *)self openFileRefs]- 1];
      }

      [(smbNode *)self unlockMeta];
      dispatch_group_enter(v7);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002D028;
      block[3] = &unk_10008D550;
      block[4] = self;
      readWrite_fileRef = write_fileRef2;
      v40 = readWrite_fileRef;
      v41 = v7;
      dispatch_async(v8, block);

      v12 = 1;
    }

    else
    {
      v12 = 0;
      readWrite_fileRef = 0;
    }

    read_fileRef = [(smbNode *)self ReadWrite_fileRef];

    if (read_fileRef)
    {
      readWrite_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
      [(smbNode *)self setReadWrite_fileRef:0];
      [(smbNode *)self lockMeta];
      if ([(smbNode *)self openFileRefs])
      {
        [(smbNode *)self setOpenFileRefs:[(smbNode *)self openFileRefs]- 1];
      }

      [(smbNode *)self unlockMeta];
      dispatch_group_enter(v7);
      read_fileRef = 0;
      v17 = v38;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v18 = sub_10002D0C0;
LABEL_24:
      v15 = readWrite_fileRef2;
LABEL_25:
      ++v12;
      v17[2] = v18;
      v17[3] = &unk_10008D550;
      v17[4] = self;
      v17[5] = readWrite_fileRef2;
      v17[6] = v7;
      dispatch_async(v8, v17);

      handlerCopy = v24;
LABEL_43:
      v22 = [(smbNode *)self mp];
      [v22 decreaseOpenFileCount:v12];

      goto LABEL_44;
    }

    v15 = 0;
  }

  else
  {
    if (mode)
    {
      v15 = 0;
      readWrite_fileRef = 0;
      read_fileRef = 0;
      goto LABEL_44;
    }

    read_fileRef = [(smbNode *)self Read_fileRef];

    if (read_fileRef)
    {
      read_fileRef3 = [(smbNode *)self Read_fileRef];
      [(smbNode *)self setRead_fileRef:0];
      [(smbNode *)self lockMeta];
      if ([(smbNode *)self openFileRefs])
      {
        [(smbNode *)self setOpenFileRefs:[(smbNode *)self openFileRefs]- 1];
      }

      [(smbNode *)self unlockMeta];
      dispatch_group_enter(v7);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10002D288;
      v31[3] = &unk_10008D550;
      v31[4] = self;
      read_fileRef = read_fileRef3;
      v32 = read_fileRef;
      v33 = v7;
      dispatch_async(v8, v31);

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    readWrite_fileRef3 = [(smbNode *)self ReadWrite_fileRef];

    v24 = handlerCopy;
    if (readWrite_fileRef3)
    {
      ++v12;
      readWrite_fileRef4 = [(smbNode *)self ReadWrite_fileRef];
      [(smbNode *)self setReadWrite_fileRef:0];
      [(smbNode *)self lockMeta];
      if ([(smbNode *)self openFileRefs])
      {
        [(smbNode *)self setOpenFileRefs:[(smbNode *)self openFileRefs]- 1];
      }

      [(smbNode *)self unlockMeta];
      dispatch_group_enter(v7);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10002D320;
      v28[3] = &unk_10008D550;
      v28[4] = self;
      v15 = readWrite_fileRef4;
      v29 = v15;
      v30 = v7;
      dispatch_async(v8, v28);
    }

    else
    {
      v15 = 0;
    }

    readWrite_fileRef = [(smbNode *)self Write_fileRef];

    if (readWrite_fileRef)
    {
      readWrite_fileRef2 = [(smbNode *)self Write_fileRef];
      [(smbNode *)self setWrite_fileRef:0];
      [(smbNode *)self lockMeta];
      if ([(smbNode *)self openFileRefs])
      {
        [(smbNode *)self setOpenFileRefs:[(smbNode *)self openFileRefs]- 1];
      }

      [(smbNode *)self unlockMeta];
      dispatch_group_enter(v7);
      v17 = v27;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v18 = sub_10002D3B8;
      readWrite_fileRef = readWrite_fileRef2;
      goto LABEL_25;
    }
  }

  handlerCopy = v24;
  if (v12)
  {
    goto LABEL_43;
  }

LABEL_44:
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002D450;
  v25[3] = &unk_10008DF40;
  v25[4] = self;
  v26 = handlerCopy;
  v23 = handlerCopy;
  dispatch_group_notify(v7, v8, v25);
}

- (void)closeFileRefInternal:(id)internal CompletionHandler:(id)handler
{
  internalCopy = internal;
  handlerCopy = handler;
  if ([internalCopy reconnState])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100057B24(self, internalCopy);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v8 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
    *v8 = 0u;
    v8[1] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    v9 = [(smbNode *)self mp];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002D640;
    v14[3] = &unk_10008D2D0;
    v15 = internalCopy;
    v16 = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002D71C;
    v10[3] = &unk_10008DF68;
    v10[4] = self;
    v13 = v8;
    v11 = v15;
    v12 = handlerCopy;
    [v9 submitRequestBlock:v14 continuationBlock:v10];
  }
}

- (void)invalidateAttrs
{
  [(NSLock *)self->_metaLock lock];
  self->attrTime.tv_sec = 0;
  self->attrTime.tv_nsec = 0;
  metaLock = self->_metaLock;

  [(NSLock *)metaLock unlock];
}

- (void)refreshAttrsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10002DAFC;
  v20[4] = sub_10002DB0C;
  v21 = 0;
  if (clock_gettime(_CLOCK_REALTIME, &__tp))
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = __error();
      sub_100057D04(v6, buf);
    }

    v7 = 5;
    goto LABEL_7;
  }

  v8 = [smbNode getAttrTimeout:__tp.tv_sec lastModified:__tp.tv_nsec, self->fattr.fa_mtime.tv_sec, self->fattr.fa_mtime.tv_nsec];
  if (__tp.tv_sec - self->attrTime.tv_sec >= v8)
  {
    v9 = [(smbNode *)self mp];
    if ([v9 connectionState] != 1)
    {
      v10 = [(smbNode *)self mp];
      if ([v10 connectionState] != 2)
      {
        isRoot = [(smbNode *)self isRoot];

        if (isRoot)
        {
          goto LABEL_6;
        }

LABEL_13:
        attrDataCache = self->attrDataCache;
        self->attrDataCache = 0;

        *buf = 0;
        v24 = buf;
        v25 = 0x2020000000;
        v26 = malloc_type_malloc(0xF0uLL, 0x1000040D9093685uLL);
        v12 = *(v24 + 3);
        v12[2] = 0u;
        v12[3] = 0u;
        v12[4] = 0u;
        v12[5] = 0u;
        v12[6] = 0u;
        v12[7] = 0u;
        v12[8] = 0u;
        v12[9] = 0u;
        v12[10] = 0u;
        v12[11] = 0u;
        v12[12] = 0u;
        v12[13] = 0u;
        v12[14] = 0u;
        *v12 = 0u;
        v12[1] = 0u;
        v13 = [(smbNode *)self mp];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10002DB14;
        v19[3] = &unk_10008CAD8;
        v19[4] = self;
        v19[5] = buf;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10002DBDC;
        v15[3] = &unk_10008DFB8;
        v17 = buf;
        v15[4] = self;
        v16 = handlerCopy;
        v18 = v20;
        [v13 submitRequestBlock:v19 continuationBlock:v15];

        _Block_object_dispose(buf, 8);
        goto LABEL_8;
      }
    }

    goto LABEL_13;
  }

LABEL_6:
  v7 = 0;
LABEL_7:
  (*(handlerCopy + 2))(handlerCopy, v7);
LABEL_8:
  _Block_object_dispose(v20, 8);
}

- (unint64_t)getReadDirVerifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10002E4F4;
  v10 = &unk_10008C740;
  v12 = &v13;
  v4 = v3;
  v11 = v4;
  [(smbNode *)self refreshAttrsWithCompletionHandler:&v7];
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  [(NSLock *)self->_metaLock lock:v7];
  if (*(v14 + 6))
  {
    tv_sec = 0;
  }

  else
  {
    tv_sec = self->fattr.fa_mtime.tv_sec;
  }

  [(NSLock *)self->_metaLock unlock];

  _Block_object_dispose(&v13, 8);
  return tv_sec;
}

- (id)getDirEnumerator:(int *)enumerator
{
  [(NSLock *)self->_metaLock lock];
  if (self->fattr.fa_vtype == 2)
  {
    if (self->dirEnum)
    {
      v5 = 0;
    }

    else
    {
      v6 = [[dirEnumerator alloc] initWithNode:self];
      dirEnum = self->dirEnum;
      self->dirEnum = v6;

      if (self->dirEnum)
      {
        v5 = 0;
      }

      else
      {
        v5 = 12;
      }
    }
  }

  else
  {
    v5 = 20;
  }

  [(NSLock *)self->_metaLock unlock];
  *enumerator = v5;
  v8 = self->dirEnum;

  return v8;
}

+ (unsigned)getAttrTimeout:(timespec)timeout lastModified:(timespec)modified
{
  v4 = (LODWORD(timeout.tv_sec) - LODWORD(modified.tv_sec)) / 10;
  if (timeout.tv_sec - modified.tv_sec > 309)
  {
    v4 = 30;
  }

  if (timeout.tv_sec - modified.tv_sec >= 20)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

- (BOOL)getMaxAccessAttr:(unsigned int *)attr
{
  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  [(NSLock *)self->_metaLock lock];
  if (!self->fa_max_access_valid)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (clock_gettime(_CLOCK_REALTIME, &v7))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100057F60();
    }

    goto LABEL_5;
  }

  if (v7.tv_sec - self->maxAccessTime.tv_sec > 5)
  {
    v5 = 0;
    self->fa_max_access_valid = 0;
  }

  else
  {
    *attr = self->fa_max_access;
    v5 = 1;
  }

LABEL_6:
  [(NSLock *)self->_metaLock unlock];
  return v5;
}

- (void)setMaxAccessAttr:(unsigned int)attr
{
  [(NSLock *)self->_metaLock lock];
  self->fa_max_access_valid = 1;
  self->fa_max_access = attr;
  clock_gettime(_CLOCK_REALTIME, &self->maxAccessTime);
  metaLock = self->_metaLock;

  [(NSLock *)metaLock unlock];
}

- (void)fetchAttrDataWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002E784;
  v4[3] = &unk_10008DFE0;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(smbNode *)selfCopy refreshAttrsWithCompletionHandler:v4];
}

+ (id)fileHandleForIno:(unint64_t)ino
{
  inoCopy = ino;
  v3 = [NSData dataWithBytes:&inoCopy length:8];
  v4 = [v3 base64EncodedStringWithOptions:1];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  return v5;
}

- (id)makeSillyDeleteName
{
  v2 = [[NSString alloc] initWithFormat:@".smbdeleteABC%llx", self->fattr.fa_ino];

  return v2;
}

- (void)closeAllFileRefs:(id)refs
{
  refsCopy = refs;
  v5 = dispatch_group_create();
  v6 = dispatch_queue_create("com.apple.SMBProvider.closeRefsQueue", 0);
  v7 = objc_alloc_init(NSMutableArray);
  read_fileRef = [(smbNode *)self Read_fileRef];

  if (read_fileRef)
  {
    read_fileRef2 = [(smbNode *)self Read_fileRef];
    reconnState = [read_fileRef2 reconnState];

    if (!reconnState)
    {
      v12 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v12 = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      v12[3] = 0u;
      read_fileRef = [NSValue valueWithPointer:v12];
      [v7 addObject:read_fileRef];
      dispatch_group_enter(v5);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002EE48;
      block[3] = &unk_10008E030;
      block[4] = self;
      v38 = v12;
      v37 = v5;
      dispatch_async(v6, block);

      v11 = 1;
      goto LABEL_6;
    }

    read_fileRef = 0;
  }

  v11 = 0;
LABEL_6:
  write_fileRef = [(smbNode *)self Write_fileRef];

  if (write_fileRef)
  {
    write_fileRef2 = [(smbNode *)self Write_fileRef];
    reconnState2 = [write_fileRef2 reconnState];

    if (!reconnState2)
    {
      v16 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v16 = 0u;
      v16[1] = 0u;
      v16[2] = 0u;
      v16[3] = 0u;
      ++v11;
      v17 = [NSValue valueWithPointer:v16];

      [v7 addObject:v17];
      dispatch_group_enter(v5);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10002EF88;
      v33[3] = &unk_10008E030;
      v33[4] = self;
      v35 = v16;
      v34 = v5;
      dispatch_async(v6, v33);

      read_fileRef = v17;
    }
  }

  readWrite_fileRef = [(smbNode *)self ReadWrite_fileRef];

  if (readWrite_fileRef)
  {
    readWrite_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
    reconnState3 = [readWrite_fileRef2 reconnState];

    if (!reconnState3)
    {
      v21 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v21 = 0u;
      v21[1] = 0u;
      v21[2] = 0u;
      v21[3] = 0u;
      ++v11;
      v22 = [NSValue valueWithPointer:v21];

      [v7 addObject:v22];
      dispatch_group_enter(v5);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10002F0C8;
      v30[3] = &unk_10008E030;
      v30[4] = self;
      v32 = v21;
      v31 = v5;
      dispatch_async(v6, v30);

      read_fileRef = v22;
    }
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002F208;
  v25[3] = &unk_10008CDD0;
  v26 = v7;
  selfCopy = self;
  v28 = refsCopy;
  v29 = v11;
  v23 = refsCopy;
  v24 = v7;
  dispatch_group_notify(v5, v6, v25);
}

- (void)prepareForReclaim:(id)reclaim
{
  reclaimCopy = reclaim;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000581C4(self);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002F400;
  v6[3] = &unk_10008CC40;
  v6[4] = self;
  v7 = reclaimCopy;
  v5 = reclaimCopy;
  [(smbNode *)self closeAllFileRefs:v6];
}

- (int)prepareForReclaimSync
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10002DAFC;
  v11 = sub_10002DB0C;
  v12 = dispatch_group_create();
  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    name = [(smbNode *)self name];
    sub_100058254(name, buf);
  }

  dispatch_group_enter(v8[5]);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002F664;
  v6[3] = &unk_10008E058;
  v6[4] = self;
  v6[5] = &v7;
  [(smbNode *)self closeAllFileRefs:v6];
  dispatch_group_wait(v8[5], 0xFFFFFFFFFFFFFFFFLL);
  _Block_object_dispose(&v7, 8);

  return 0;
}

- (void)prepareForReconnect
{
  [(NSLock *)self->_metaLock lock];
  if (self->fattr.fa_vtype == 2)
  {
    dirEnum = self->dirEnum;
    if (dirEnum)
    {
      [(dirEnumerator *)dirEnum resetAfterReconnect];
    }
  }

  [(NSLock *)self->_metaLock unlock];
  read_fileRef = [(smbNode *)self Read_fileRef];

  if (read_fileRef)
  {
    read_fileRef2 = [(smbNode *)self Read_fileRef];
    refSyncQueue = [read_fileRef2 refSyncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002F94C;
    block[3] = &unk_10008C880;
    block[4] = self;
    dispatch_sync(refSyncQueue, block);
  }

  readWrite_fileRef = [(smbNode *)self ReadWrite_fileRef];

  if (readWrite_fileRef)
  {
    readWrite_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
    refSyncQueue2 = [readWrite_fileRef2 refSyncQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002F9E0;
    v16[3] = &unk_10008C880;
    v16[4] = self;
    dispatch_sync(refSyncQueue2, v16);
  }

  write_fileRef = [(smbNode *)self Write_fileRef];

  if (write_fileRef)
  {
    write_fileRef2 = [(smbNode *)self Write_fileRef];
    refSyncQueue3 = [write_fileRef2 refSyncQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002FA74;
    v15[3] = &unk_10008C880;
    v15[4] = self;
    dispatch_sync(refSyncQueue3, v15);
  }

  changeNotifyFileRef = [(smbNode *)self changeNotifyFileRef];
  v14 = changeNotifyFileRef;
  if (changeNotifyFileRef && [changeNotifyFileRef reconnState] != 2)
  {
    [v14 setReconnState:1];
  }
}

- (BOOL)reopenFileNodes
{
  if (![(smbNode *)self isViable])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000582B0(self);
    }

    goto LABEL_8;
  }

  if (self->fattr.fa_vtype == 2)
  {
LABEL_8:
    LOBYTE(reopenSharedRefs) = 0;
    return reopenSharedRefs;
  }

  reopenDenyModeRefs = [(smbNode *)self reopenDenyModeRefs];
  if (reopenDenyModeRefs)
  {
    reopenSharedRefs = reopenDenyModeRefs;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100058340();
    }
  }

  else
  {
    reopenSharedRefs = [(smbNode *)self reopenSharedRefs];
    if (!reopenSharedRefs)
    {
      return reopenSharedRefs;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000583B8();
    }
  }

  LOBYTE(reopenSharedRefs) = sub_1000326AC(reopenSharedRefs);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100058430(self);
  }

  [(smbNode *)self setRevokedState:1];
  return reopenSharedRefs;
}

- (int)reopenDenyModeRefs
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  readWrite_fileRef = [(smbNode *)self ReadWrite_fileRef];

  if (readWrite_fileRef)
  {
    readWrite_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
    refSyncQueue = [readWrite_fileRef2 refSyncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FE40;
    block[3] = &unk_10008C858;
    block[4] = self;
    block[5] = &v17;
    dispatch_sync(refSyncQueue, block);
  }

  if (!*(v18 + 6))
  {
    write_fileRef = [(smbNode *)self Write_fileRef];

    if (write_fileRef)
    {
      write_fileRef2 = [(smbNode *)self Write_fileRef];
      refSyncQueue2 = [write_fileRef2 refSyncQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002FFB0;
      v15[3] = &unk_10008C858;
      v15[4] = self;
      v15[5] = &v17;
      dispatch_sync(refSyncQueue2, v15);
    }

    if (!*(v18 + 6))
    {
      read_fileRef = [(smbNode *)self Read_fileRef];

      if (read_fileRef)
      {
        read_fileRef2 = [(smbNode *)self Read_fileRef];
        refSyncQueue3 = [read_fileRef2 refSyncQueue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100030120;
        v14[3] = &unk_10008C858;
        v14[4] = self;
        v14[5] = &v17;
        dispatch_sync(refSyncQueue3, v14);
      }
    }
  }

  v12 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v12;
}

- (int)reopenSharedRefs
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  readWrite_fileRef = [(smbNode *)self ReadWrite_fileRef];

  if (readWrite_fileRef)
  {
    readWrite_fileRef2 = [(smbNode *)self ReadWrite_fileRef];
    refSyncQueue = [readWrite_fileRef2 refSyncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000304CC;
    block[3] = &unk_10008C858;
    block[4] = self;
    block[5] = &v17;
    dispatch_sync(refSyncQueue, block);
  }

  if (!*(v18 + 6))
  {
    write_fileRef = [(smbNode *)self Write_fileRef];

    if (write_fileRef)
    {
      write_fileRef2 = [(smbNode *)self Write_fileRef];
      refSyncQueue2 = [write_fileRef2 refSyncQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10003063C;
      v15[3] = &unk_10008C858;
      v15[4] = self;
      v15[5] = &v17;
      dispatch_sync(refSyncQueue2, v15);
    }

    if (!*(v18 + 6))
    {
      read_fileRef = [(smbNode *)self Read_fileRef];

      if (read_fileRef)
      {
        read_fileRef2 = [(smbNode *)self Read_fileRef];
        refSyncQueue3 = [read_fileRef2 refSyncQueue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000307AC;
        v14[3] = &unk_10008C858;
        v14[4] = self;
        v14[5] = &v17;
        dispatch_sync(refSyncQueue3, v14);
      }
    }
  }

  v12 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  return v12;
}

- (int)reopenFileRef:(id)ref
{
  refCopy = ref;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10002DAFC;
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x2020000000;
  v24 = 0;
  v29 = sub_10002DB0C;
  v30 = 0;
  v5 = dispatch_group_create();
  v6 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
  *(v6 + 4) = 0;
  *(v6 + 12) = 0;
  *v6 = 1;
  *(v6 + 1) = [refCopy desiredAccess];
  shareMode = [refCopy shareMode];
  fa_vtype = self->fattr.fa_vtype;
  *(v6 + 2) = shareMode;
  *(v6 + 12) = fa_vtype;
  dispatch_group_enter(v5);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100030B8C;
  v17 = &unk_10008E080;
  v19 = &v22;
  v20 = &v25;
  v21 = v6;
  v9 = v5;
  v18 = v9;
  [smb_subr openFileNode:self withStream:0 withArgs:v6 CompletionHandler:&v14];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (v26[5])
  {
    [refCopy setFidCtx:{v14, v15, v16, v17}];
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(smbNode *)self name:v14];
      sub_100058BB8(v11, v23);
    }
  }

  v12 = *(v23[0] + 24);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)addChangeNotify:(id)notify NotifyHandler:(id)handler
{
  notifyCopy = notify;
  handlerCopy = handler;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_10002DAFC;
  v26[4] = sub_10002DB0C;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  if (![(smbNode *)self isDir])
  {
    v10 = 20;
LABEL_5:
    notifyCopy[2](notifyCopy, v10);
    v9 = 0;
    goto LABEL_6;
  }

  v8 = self->_changeNotifyFileRef;
  if (!v8)
  {
    v11 = [[fileRef alloc] initWithMode:1];
    v12 = v11;
    if (v11)
    {
      [(fileRef *)v11 setShareMode:7];
      [(fileRef *)v12 setDesiredAccess:1048577];
      [(fileRef *)v12 addRef];
      v13 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
      *(v13 + 4) = 0;
      *(v13 + 12) = 0;
      *v13 = 1;
      *(v13 + 1) = [(fileRef *)v12 desiredAccess];
      *(v13 + 2) = [(fileRef *)v12 shareMode];
      *(v13 + 3) = 2;
      v14 = [(smbNode *)self mp];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100030F58;
      v23[3] = &unk_10008D758;
      v23[6] = v13;
      v23[4] = self;
      v23[5] = v26;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000310AC;
      v17[3] = &unk_10008E120;
      v17[4] = self;
      v19 = notifyCopy;
      v9 = v12;
      v18 = v9;
      v21 = v26;
      v20 = handlerCopy;
      v22 = v24;
      [v14 submitRequestBlockOnce:v23 continuationBlock:v17];

      goto LABEL_6;
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      name = [(smbNode *)self name];
      sub_100058C1C(name, buf);
    }

    v10 = 12;
    goto LABEL_5;
  }

  v9 = v8;
  [(fileRef *)v8 addRef];
  notifyCopy[2](notifyCopy, 0);
LABEL_6:
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
}

- (void)clearChangeNotify:(BOOL)notify completionHandler:(id)handler
{
  notifyCopy = notify;
  handlerCopy = handler;
  if ([(smbNode *)self isDir])
  {
    if (self->_changeNotifyFileRef)
    {
      v7 = dispatch_group_create();
      v8 = dispatch_queue_create("com.apple.SMBProvider.clearChangeNotifyQueue", 0);
      if (notifyCopy)
      {
        if ([(fileRef *)self->_changeNotifyFileRef decRef])
        {
          handlerCopy[2](handlerCopy, 0);
        }

        else
        {
          v11 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
          *v11 = 0u;
          v11[1] = 0u;
          v11[2] = 0u;
          v11[3] = 0u;
          v12 = self->_changeNotifyFileRef;
          changeNotifyFileRef = self->_changeNotifyFileRef;
          self->_changeNotifyFileRef = 0;

          v14 = [(smbNode *)self mp];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000319F8;
          v29[3] = &unk_10008D2D0;
          v30 = v12;
          v31 = v11;
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_100031AD4;
          v26[3] = &unk_10008E148;
          v26[4] = self;
          v28 = v11;
          v27 = handlerCopy;
          v15 = v12;
          [v14 submitRequestBlock:v29 continuationBlock:v26];
        }
      }

      else
      {
        v9 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v9 = 0u;
        v9[1] = 0u;
        v9[2] = 0u;
        v9[3] = 0u;
        if ([(fileRef *)self->_changeNotifyFileRef reconnState])
        {
          v10 = 0;
        }

        else
        {
          v16 = self->_changeNotifyFileRef;
          v17 = self->_changeNotifyFileRef;
          self->_changeNotifyFileRef = 0;

          dispatch_group_enter(v7);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100031B60;
          block[3] = &unk_10008E170;
          v10 = v16;
          v25 = v9;
          v22 = v10;
          selfCopy = self;
          v24 = v7;
          dispatch_async(v8, block);
        }

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100031C98;
        v18[3] = &unk_10008E198;
        v20 = v9;
        v19 = handlerCopy;
        dispatch_group_notify(v7, v8, v18);
      }
    }

    else
    {
      if (notifyCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100058E78(self);
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 20);
  }
}

- (BOOL)reopenChangeNotify:(id)notify
{
  notifyCopy = notify;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10002DAFC;
  v42 = sub_10002DB0C;
  v43 = 0;
  v35 = 0;
  v36[0] = &v35;
  v36[1] = 0x2020000000;
  v37 = 0;
  if (self->_changeNotifyFileRef)
  {
    v5 = dispatch_group_create();
    v6 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
    *(v6 + 4) = 0;
    *(v6 + 12) = 0;
    *v6 = 1;
    *(v6 + 1) = [(fileRef *)self->_changeNotifyFileRef desiredAccess];
    *(v6 + 2) = [(fileRef *)self->_changeNotifyFileRef shareMode];
    *(v6 + 3) = 2;
    dispatch_group_enter(v5);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100032174;
    v30[3] = &unk_10008E080;
    v32 = &v35;
    v33 = &v38;
    v34 = v6;
    v7 = v5;
    v31 = v7;
    [smb_subr openFileNode:self withStream:0 withArgs:v6 CompletionHandler:v30];
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    if (v39[5])
    {
      [(fileRef *)self->_changeNotifyFileRef setFidCtx:?];
      [(fileRef *)self->_changeNotifyFileRef setOpenMode:0];
      dispatch_group_enter(v7);
      fidCtx = [(fileRef *)self->_changeNotifyFileRef fidCtx];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000321F4;
      v27[3] = &unk_10008C740;
      v29 = &v35;
      v9 = v7;
      v28 = v9;
      [smb_subr setChangeNotify:fidCtx Param:&self->changeNotifyArgs CompletionHandler:v27 NotifyHandler:notifyCopy];

      dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
      v10 = *(v36[0] + 24);
      if (v10)
      {
        v11 = sub_1000326AC(v10);
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          name = [(smbNode *)self name];
          sub_100059090(name, v36);
        }

        v14 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        dispatch_group_enter(v9);
        fidCtx2 = [(fileRef *)self->_changeNotifyFileRef fidCtx];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100032208;
        v23[3] = &unk_10008C830;
        v25 = &v35;
        v26 = v14;
        v24 = v9;
        [smb_subr sendClose:fidCtx2 Param:v14 GetPostAttrs:0 CompletionHandler:v23];

        changeNotifyFileRef = self->_changeNotifyFileRef;
        self->_changeNotifyFileRef = 0;

        if (*(v36[0] + 24))
        {
          v17 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            name2 = [(smbNode *)self name];
            sub_1000590F0(name2, v36);
          }
        }

        v19 = v24;
      }

      else
      {
        v19 = [(smbNode *)self mp];
        [v19 increaseChangeNotifyCount:1];
        v11 = 0;
      }

      v21 = v28;
    }

    else
    {
      v20 = *(v36[0] + 24);
      if (!v20)
      {
        v20 = 5;
        *(v36[0] + 24) = 5;
      }

      v11 = sub_1000326AC(v20);
      v21 = self->_changeNotifyFileRef;
      self->_changeNotifyFileRef = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v38, 8);

  return v11;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100059150(self);
  }

  attrDataCache = self->attrDataCache;
  self->attrDataCache = 0;

  Read_fileRef = self->_Read_fileRef;
  self->_Read_fileRef = 0;

  Write_fileRef = self->_Write_fileRef;
  self->_Write_fileRef = 0;

  ReadWrite_fileRef = self->_ReadWrite_fileRef;
  self->_ReadWrite_fileRef = 0;

  mp = self->_mp;
  self->_mp = 0;

  parent = self->_parent;
  self->_parent = 0;

  name = self->_name;
  self->_name = 0;

  fh = self->_fh;
  self->_fh = 0;

  metaLock = self->_metaLock;
  self->_metaLock = 0;

  v12.receiver = self;
  v12.super_class = smbNode;
  [(smbNode *)&v12 dealloc];
}

- (timespec)symlinkRefreshTime
{
  objc_copyStruct(v4, &self->_symlinkRefreshTime, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_nsec = v3;
  result.tv_sec = v2;
  return result;
}

@end