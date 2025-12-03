@interface liveFSNode
+ (id)FileProviderFileHandleForFileID:(unint64_t)d;
- (BOOL)verifyFileIsFSCompressed:(int *)compressed;
- (NSData)getAttrData;
- (int)createDirEntry:(id)entry withAttrs:(id)attrs withData:(id)data withResultingNode:(id *)node;
- (int)decmpfsFetchCompressedHeader:(id *)header;
- (int)getAttribute:(id *)attribute;
- (int)getDeviceFD;
- (int)getFileSystemAttribute:(id)attribute andResult:(id *)result;
- (int)getXAttr:(id)attr withBuffer:(id *)buffer;
- (int)hiddenStatus;
- (int)link:(id)link withName:(id)name fileAttrOut:(id *)out dirAttrOut:(id *)attrOut;
- (int)listXattr:(id *)xattr;
- (int)lookup:(id)lookup withResultingNode:(id *)node;
- (int)pathConf:(id *)conf;
- (int)readData:(unint64_t)data intoDataBuffer:(id)buffer withLengthOut:(unint64_t *)out;
- (int)readDirectoryEntries:(id)entries withCookie:(unint64_t)cookie withLengthOut:(int64_t *)out andWithVerifier:(unint64_t *)verifier;
- (int)readDirectoryEntriesWithAttrs:(id)attrs withCookie:(unint64_t)cookie withLengthOut:(int64_t *)out andWithVerifier:(unint64_t *)verifier;
- (int)readSymLinkDataInto:(void *)into ofSize:(int)size withSymLinkDataSize:(unint64_t *)dataSize andWithSymLinkAttrData:(id *)data;
- (int)readUncompressedData:(unint64_t)data intoDataBuffer:(id)buffer withLengthOut:(unint64_t *)out;
- (int)reclaim;
- (int)remove:(int)remove named:(id)named node:(id)node usingFlags:(int)flags;
- (int)scanDirectoryForMatches:(id)matches withScanDirCookie:(unint64_t *)cookie withScanDirCookieVerifier:(unint64_t *)verifier withSearchResultType:(int *)type withSearchResult:(id *)result withSearchResultAttr:(_LIFileAttributes *)attr;
- (int)setAttributeTo:(id)to withResultingAttribute:(id *)attribute;
- (int)setFileSystemAttributes:(id)attributes toValue:(id)value andResult:(id *)result;
- (int)statFS:(id *)s;
- (int)syncTheFileSystem:(unint64_t)system;
- (int)unloadFileSystem:(int)system;
- (int)updateName:(id)name andParent:(id)parent;
- (int)writeData:(unint64_t)data fromBuffer:(id)buffer withLengthOut:(unint64_t *)out;
- (liveFSNode)initWithVolume:(id)volume andParent:(id)parent andName:(id)name andUVFSNode:(void *)node;
- (liveFSNode)initWithVolume:(id)volume andRootUVFSNode:(void *)node;
- (unsigned)decmpfsGetDirectoryEntries:(id *)entries;
- (unsigned)getLinkCount;
- (void)createFilterAttr:(_LIFileAttributes *)attr FromCriteria:(id)criteria;
- (void)createScanDirSearchRequest:(_scandir_matching_request *)request withFilter:(_LIFileAttributes *)filter withCookie:(unint64_t *)cookie withCookieVerifier:(unint64_t *)verifier fromSearchCriteria:(id)criteria;
- (void)dealloc;
- (void)forceUpdateAttrs;
- (void)forceUpdateLinkCount;
- (void)getCompressionFileInfo;
- (void)setCachedAttrs:(id)attrs;
@end

@implementation liveFSNode

+ (id)FileProviderFileHandleForFileID:(unint64_t)d
{
  dCopy = d;
  v3 = [NSData dataWithBytes:&dCopy length:8];
  v4 = [v3 base64EncodedStringWithOptions:1];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  return v5;
}

- (liveFSNode)initWithVolume:(id)volume andRootUVFSNode:(void *)node
{
  volumeCopy = volume;
  v8 = [(liveFSNode *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_UVFSNode = node;
    volumeRawDevice = [volumeCopy volumeRawDevice];
    fsPlugin = [volumeRawDevice fsPlugin];
    v9->FSOps = [fsPlugin FSOps];

    objc_storeStrong(&v9->volume, volume);
    v9->isFSCompressed = 0;
    v9->streamNode = 0;
    v9->_lfn_fileid = 2;
    v12 = [liveFSNode FileProviderFileHandleForFileID:[(liveFSNode *)v9 lfn_fileid]];
    lfn_fh = v9->_lfn_fh;
    v9->_lfn_fh = v12;

    v9->_lfn_wasWritten = 0;
    appleDoubleManager = [(userFSVolume *)v9->volume appleDoubleManager];
    v9->_lfn_check_appledouble = appleDoubleManager != 0;

    v15 = [LiveFSXattrCache xattrCacheWithMaxItems:4 andMaxItemSize:64];
    lfn_xattrCache = v9->_lfn_xattrCache;
    v9->_lfn_xattrCache = v15;
  }

  return v9;
}

- (liveFSNode)initWithVolume:(id)volume andParent:(id)parent andName:(id)name andUVFSNode:(void *)node
{
  volumeCopy = volume;
  parentCopy = parent;
  nameCopy = name;
  v14 = [(liveFSNode *)self init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v14->volume, volume);
  v15->_UVFSNode = node;
  volumeRawDevice = [volumeCopy volumeRawDevice];
  fsPlugin = [volumeRawDevice fsPlugin];
  v15->FSOps = [fsPlugin FSOps];

  v15->isFSCompressed = 0;
  v15->streamNode = 0;
  getAttrData = [(liveFSNode *)v15 getAttrData];
  v19 = getAttrData;
  if (!getAttrData)
  {
    p_attrsData = &v15->attrsData;
    if (v15->attrsData)
    {
      nodeCopy2 = node;
      v22 = 0;
      goto LABEL_8;
    }

LABEL_16:

    v15 = 0;
    goto LABEL_17;
  }

  if (![getAttrData bytes])
  {
    goto LABEL_16;
  }

  p_attrsData = &v15->attrsData;
  attrsData = v15->attrsData;
  if (!attrsData)
  {
    goto LABEL_16;
  }

  nodeCopy2 = node;
  v22 = *([(NSMutableData *)attrsData bytes]+ 8);
  mutableBytes = [*p_attrsData mutableBytes];
  mutableBytes[1] |= 0x100uLL;
LABEL_8:
  getNextObjectIdentifier = v22;
  if (![(userFSVolume *)v15->volume supportsPersistentObjectIdentifier])
  {
    getNextObjectIdentifier = [(userFSVolume *)v15->volume getNextObjectIdentifier];
  }

  if (v19 && (*([*p_attrsData bytes] + 44) & 0x20) != 0)
  {
    [(liveFSNode *)v15 getCompressionFileInfo];
  }

  objc_storeStrong(&v15->_lfn_name, name);
  objc_storeStrong(&v15->_lfn_parent, parent);
  v15->_lfn_fileid = v22;
  v25 = [liveFSNode FileProviderFileHandleForFileID:getNextObjectIdentifier];
  lfn_fh = v15->_lfn_fh;
  v15->_lfn_fh = v25;

  v15->_lfn_wasWritten = 0;
  appleDoubleManager = [(userFSVolume *)v15->volume appleDoubleManager];
  v15->_lfn_check_appledouble = appleDoubleManager != 0;

  v28 = [LiveFSXattrCache xattrCacheWithMaxItems:4 andMaxItemSize:64];
  lfn_xattrCache = v15->_lfn_xattrCache;
  v15->_lfn_xattrCache = v28;

  [(userFSVolume *)v15->volume insertIntoFHCache:v15];
  [(userFSVolume *)v15->volume insertIntoNameCache:v15 withParent:parentCopy];
  v30 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v32 = v15->_lfn_fh;
    v33 = v30;
    lfn_fh = [parentCopy lfn_fh];
    *buf = 134219010;
    v37 = v15;
    v38 = 2112;
    v39 = nameCopy;
    v40 = 2112;
    v41 = v32;
    v42 = 2048;
    v43 = nodeCopy2;
    v44 = 2112;
    v45 = lfn_fh;
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "LFN[%p]: Created node for name: %@ with filehandle: %@ and UVFSFileNode: %p and parent: %@", buf, 0x34u);
  }

LABEL_17:
  return v15;
}

- (void)dealloc
{
  if (self->_UVFSNode)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002374C();
    }

    reclaim = [(liveFSNode *)self reclaim];
    if (reclaim)
    {
      v4 = reclaim;
      v5 = userfs_log_default;
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000237C0(self, v4, v5);
      }
    }
  }

  v6.receiver = self;
  v6.super_class = liveFSNode;
  [(liveFSNode *)&v6 dealloc];
}

- (unsigned)getLinkCount
{
  if (![(userFSVolume *)self->volume supportsHardLinks])
  {
    return 1;
  }

  getAttrData = [(liveFSNode *)self getAttrData];
  if (!getAttrData)
  {
    return 1;
  }

  v4 = getAttrData;
  getAttrData2 = [(liveFSNode *)self getAttrData];
  bytes = [getAttrData2 bytes];
  if (!bytes || (v7 = bytes, v8 = bytes[1], (v8 & 1) == 0) || *(bytes + 6) == 2)
  {

    return 1;
  }

  if ((v8 & 4) == 0)
  {
    return 1;
  }

  return *(v7 + 8);
}

- (int)hiddenStatus
{
  if ([(liveFSNode *)self getLinkCount]> 1)
  {
    return 0;
  }

  lfn_name = [(liveFSNode *)self lfn_name];
  v4 = [lfn_name hasPrefix:@"."];

  if (v4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)forceUpdateAttrs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  attrsData = selfCopy->attrsData;
  selfCopy->attrsData = 0;

  objc_sync_exit(selfCopy);
  getAttrData = [(liveFSNode *)selfCopy getAttrData];
}

- (void)forceUpdateLinkCount
{
  if ([(userFSVolume *)self->volume supportsHardLinks])
  {

    [(liveFSNode *)self forceUpdateAttrs];
  }
}

- (int)updateName:(id)name andParent:(id)parent
{
  parentCopy = parent;
  [(liveFSNode *)self setLfn_name:name];
  [(liveFSNode *)self setLfn_parent:parentCopy];

  return 0;
}

- (int)unloadFileSystem:(int)system
{
  FSOps = self->FSOps;
  if (!FSOps)
  {
    return 0;
  }

  var7 = FSOps->var7;
  if (!var7)
  {
    return 0;
  }

  if ((system & 8) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = system & 1;
  }

  result = var7(self->_UVFSNode, v6);
  if (!result)
  {
    self->_UVFSNode = 0;
  }

  return result;
}

- (int)syncTheFileSystem:(unint64_t)system
{
  FSOps = self->FSOps;
  if (!FSOps)
  {
    return 0;
  }

  if (!FSOps->var5)
  {
    return 0;
  }

  systemCopy = system;
  if ([(userFSVolume *)self->volume readOnly]|| !self->_UVFSNode)
  {
    return 0;
  }

  v6 = self->FSOps;
  if ((systemCopy & 2) == 0 || (var5 = v6->var6) == 0)
  {
    var5 = v6->var5;
  }

  return var5();
}

- (int)getFileSystemAttribute:(id)attribute andResult:(id *)result
{
  attributeCopy = attribute;
  uTF8String = [attribute UTF8String];
  v32 = 0;
  v33 = 0;
  *result = 0;
  if (!strcmp(uTF8String, "_S_f_location"))
  {
    volumeRawDevice = [(userFSVolume *)self->volume volumeRawDevice];
    deviceName = [volumeRawDevice deviceName];
    v19 = [NSString stringWithFormat:@"/dev/%@", deviceName];

    uTF8String2 = [v19 UTF8String];
    v21 = [NSData dataWithBytes:uTF8String2 length:strlen(uTF8String2) + 1];
    *result = v21;
    if (v21)
    {
      v15 = 0;
    }

    else
    {
      v15 = 12;
    }

    return v15;
  }

  if (!strcmp(uTF8String, "_B_has_perm_enforcement") || !strcmp(uTF8String, "_B_has_access_check"))
  {
    LOBYTE(v33) = 0;
LABEL_16:
    v16 = [[NSData alloc] initWithBytes:&v33 length:8];
    *result = v16;
    if (v16)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  if (!strcmp(uTF8String, "_N_mntflags"))
  {
    if (self->_UVFSNode && (var8 = self->FSOps->var8) != 0 && !var8())
    {
      v24 = v33 | 0x10000000;
    }

    else
    {
      v24 = 0x10000000;
    }

    v33 = v24;
    if ([(userFSVolume *)self->volume readOnly])
    {
      v33 |= 1uLL;
    }

    goto LABEL_16;
  }

  if (!strcmp(uTF8String, "_O_f_uuid"))
  {
    v34[0] = 0;
    v34[1] = 0;
    v9 = [NSUUID alloc];
    volumeName = [(userFSVolume *)self->volume volumeName];
    v11 = [v9 initWithUUIDString:volumeName];
    [v11 getUUIDBytes:v34];

    *result = [NSData dataWithBytes:v34 length:16];
  }

  FSOps = self->FSOps;
  if (!FSOps)
  {
    return 45;
  }

  v13 = FSOps->var8;
  if (!v13)
  {
    return 45;
  }

  if (!self->_UVFSNode)
  {
    return 22;
  }

  if (*uTF8String == 95)
  {
    v14 = *(uTF8String + 1);
    if (v14 == 78 || v14 == 66)
    {
      v15 = v13();
      if (v15)
      {
        return v15;
      }

      goto LABEL_16;
    }
  }

  v25 = v13();
  v15 = v25;
  if (v25 != 2)
  {
    if (v25 == 7)
    {
      v26 = [NSMutableData alloc];
      v27 = [v26 initWithLength:v32];
      v28 = self->FSOps->var8;
      UVFSNode = self->_UVFSNode;
      mutableBytes = [v27 mutableBytes];
      v15 = v28(UVFSNode, uTF8String, mutableBytes, v32, &v32);
      if (v15)
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100023848();
        }
      }

      else
      {
        v31 = v27;
        *result = v27;
      }
    }

    else if (v25 != 45)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000238C4();
      }

      return 5;
    }
  }

  return v15;
}

- (int)getAttribute:(id *)attribute
{
  *attribute = 0;
  FSOps = self->FSOps;
  if (!FSOps || !FSOps->var10)
  {
    return 45;
  }

  if (!self->_UVFSNode)
  {
    return 22;
  }

  v6 = [NSMutableData dataWithLength:184];
  v7 = v6;
  if (v6)
  {
    v8 = (self->FSOps->var10)(self->_UVFSNode, [v6 mutableBytes]);
    if (!v8)
    {
      v9 = v7;
      *attribute = v7;
    }
  }

  else
  {
    v8 = 12;
  }

  return v8;
}

- (int)decmpfsFetchCompressedHeader:(id *)header
{
  v13 = 0;
  v5 = [(LiveFSXattrCache *)self->_lfn_xattrCache dataForName:@"com.apple.decmpfs" wasNegative:&v13];
  if (v5 || (v12 = 0, v10 = [(liveFSNode *)self getXAttr:@"com.apple.decmpfs" withBuffer:&v12], v5 = v12, !v10))
  {
    v6 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v5 length] + 4);
    if (!v6)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100023AB4();
      }

      v7 = 0;
      v10 = 12;
      goto LABEL_19;
    }

    v7 = v6;
    *header = [v6 mutableBytes];
    **header = [v5 length];
    bytes = [v5 bytes];
    v9 = *header;
    *(v9 + 4) = *bytes;
    *(v9 + 12) = bytes[1];
    memcpy(*header + 20, bytes + 2, [v5 length] - 16);
    if (*(*header + 1) == 1668116582)
    {
      if (*(*header + 2) < 0xFFu || [(liveFSNode *)self decmpfsTypeIsDataless:?])
      {
        v10 = 0;
        goto LABEL_20;
      }

      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100023A3C(header);
      }
    }

    else if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000239B0(header);
    }

    v10 = 22;
LABEL_18:
    if (!*header)
    {
      goto LABEL_20;
    }

LABEL_19:
    *header = 0;
    goto LABEL_20;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100023940();
  }

  v7 = 0;
  if (v10 != 34)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v10;
}

- (unsigned)decmpfsGetDirectoryEntries:(id *)entries
{
  if (entries->var1 == 1668116582 && entries->var2 == -2147483646)
  {
    return *(&entries->var2 + 1) >> 40;
  }

  else
  {
    return *(&entries->var2 + 1);
  }
}

- (BOOL)verifyFileIsFSCompressed:(int *)compressed
{
  v10 = 0;
  if ((*([(NSMutableData *)self->attrsData mutableBytes]+ 44) & 0x20) == 0)
  {
    goto LABEL_2;
  }

  v6 = [(liveFSNode *)self decmpfsFetchCompressedHeader:&v10];
  *compressed = v6;
  if (v6)
  {
    v5 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      goto LABEL_16;
    }

    sub_100023AF0(compressed);
    goto LABEL_2;
  }

  if (*([(NSMutableData *)self->attrsData mutableBytes]+ 6) != 1 && ![(liveFSNode *)self decmpfsTypeIsDataless:*(v10 + 8)]&& *([(NSMutableData *)self->attrsData mutableBytes]+ 6) == 2)
  {
LABEL_2:
    LOBYTE(v5) = 0;
    goto LABEL_16;
  }

  v7 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100023B64(&v10, v7);
  }

  if (v10)
  {
    Func = decmpGetFunc(*(v10 + 8), 2);
    if (Func)
    {
      Func = Func(v10);
    }

    self->deCmpFlags = Func;
  }

  LOBYTE(v5) = 1;
LABEL_16:
  self->isFSCompressed = v5;
  return v5;
}

- (void)getCompressionFileInfo
{
  FSOps = self->FSOps;
  if (FSOps)
  {
    var34 = FSOps->var34;
    if (var34)
    {
      v9 = 0;
      v5 = var34(self->_UVFSNode, &v9);
      v10 = v5;
      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = v9 == 0;
      }

      if (v6)
      {
LABEL_21:
        if (!v5)
        {
          return;
        }

        goto LABEL_22;
      }

      self->streamNode = v9;
      v7 = [NSMutableData dataWithLength:184];
      if (v7)
      {
        if ([(liveFSNode *)self verifyFileIsFSCompressed:&v10])
        {
LABEL_20:

          v5 = v10;
          goto LABEL_21;
        }

        if (v10)
        {
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100023BF4(&v10);
          }

          goto LABEL_20;
        }

        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100023C68();
        }

        v8 = 22;
      }

      else
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100023C9C();
        }

        v8 = 12;
      }

      v10 = v8;
      goto LABEL_20;
    }
  }

  v10 = 45;
LABEL_22:
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100023CD8();
  }

  self->streamNode = 0;
  self->isFSCompressed = 0;
}

- (void)setCachedAttrs:(id)attrs
{
  attrsCopy = attrs;
  if (attrsCopy)
  {
    v6 = attrsCopy;
    objc_storeStrong(&self->attrsData, attrs);
    attrsCopy = v6;
  }
}

- (int)getDeviceFD
{
  volume = self->volume;
  if (!volume)
  {
    return -1;
  }

  volumeRawDevice = [(userFSVolume *)volume volumeRawDevice];
  deviceFD = [volumeRawDevice deviceFD];

  return deviceFD;
}

- (NSData)getAttrData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->attrsData)
  {
    v3 = userfs_log_default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100023D14([(NSMutableData *)selfCopy->attrsData bytes], v11);
    }
  }

  else
  {
    v10 = 0;
    v4 = [(liveFSNode *)selfCopy getAttribute:&v10];
    v3 = v10;
    if (v4)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100023D5C();
      }
    }

    else
    {
      lfn_seqno = [(liveFSNode *)selfCopy lfn_seqno];
      [(liveFSNode *)selfCopy setLfn_seqno:lfn_seqno + 1];
      v6 = v3;
      *([v3 mutableBytes]+ 2) = lfn_seqno;
      [(liveFSNode *)selfCopy setCachedAttrs:v3];
      v7 = userfs_log_default;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100023DCC([(NSMutableData *)selfCopy->attrsData bytes], v11);
      }
    }
  }

  v8 = [NSData dataWithData:selfCopy->attrsData];
  objc_sync_exit(selfCopy);

  return v8;
}

- (int)setAttributeTo:(id)to withResultingAttribute:(id *)attribute
{
  toCopy = to;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v7 = [NSMutableData dataWithData:toCopy, 0];
  mutableBytes = [v7 mutableBytes];

  *attribute = 0;
  FSOps = self->FSOps;
  if (!FSOps || !FSOps->var11)
  {
    v10 = 45;
    goto LABEL_8;
  }

  if (self->isFSCompressed && (mutableBytes[8] & 0x40) != 0)
  {
    v10 = 1;
    goto LABEL_8;
  }

  if ([(userFSVolume *)self->volume readOnly])
  {
    v10 = 30;
    goto LABEL_8;
  }

  if (!self->_UVFSNode)
  {
LABEL_36:
    v10 = 22;
    goto LABEL_8;
  }

  v12 = *(mutableBytes + 1);
  if (v12)
  {
    if ((v12 & 0x20) != 0)
    {
      v18 = [toCopy mutableCopy];
      mutableBytes2 = [v18 mutableBytes];

      if (!mutableBytes2 || (v22 = mutableBytes2[11], v20 = mutableBytes2 + 11, v21 = v22, -[liveFSNode getAttrData](self, "getAttrData"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 bytes], v23, !v24))
      {
        v10 = 12;
        goto LABEL_8;
      }

      if ((v24[8] & 0x20) == 0 || ((*v20 ^ *(v24 + 11)) & 0x20) != 0)
      {
        if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100023E9C();
        }

        goto LABEL_36;
      }

      v25 = *v20 & 0x3FFFFFFF;
      *v20 = v25;
      if (v21 != v25 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100023E14(v20);
      }
    }

    v10 = (self->FSOps->var11)(self->_UVFSNode, [toCopy bytes], &v29);
    if (!v10 && *(&v29 + 1))
    {
      lfn_seqno = [(liveFSNode *)self lfn_seqno];
      [(liveFSNode *)self setLfn_seqno:lfn_seqno + 1];
      *&v30 = lfn_seqno;
      v14 = [NSMutableData dataWithBytes:&v29 length:184];
      if (v14)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        objc_storeStrong(&selfCopy->attrsData, v14);
        v16 = v14;
        *attribute = v14;
        objc_sync_exit(selfCopy);

        v10 = 0;
      }

      else
      {
        v10 = 12;
      }

      goto LABEL_8;
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    attrsData = selfCopy2->attrsData;
    selfCopy2->attrsData = 0;

    objc_sync_exit(selfCopy2);
    v28 = userfs_log_default;
    if (!v10 && !*(&v29 + 1))
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100023F90();
      }

      goto LABEL_36;
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100023ED0(toCopy, v28, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100023FD0();
    }

    getAttrData = [(liveFSNode *)self getAttrData];
    *attribute = getAttrData;
    if (getAttrData)
    {
      v10 = 0;
    }

    else
    {
      v10 = 12;
    }
  }

LABEL_8:

  return v10;
}

- (int)lookup:(id)lookup withResultingNode:(id *)node
{
  lookupCopy = lookup;
  v7 = [(userFSVolume *)self->volume lookupWithParent:self andName:lookupCopy];
  *node = v7;
  if (v7)
  {
LABEL_2:
    v8 = 0;
    goto LABEL_3;
  }

  v30 = 0;
  uTF8String = [lookupCopy UTF8String];
  if (uTF8String)
  {
    FSOps = self->FSOps;
    if (!FSOps || (var12 = FSOps->var12) == 0)
    {
      v8 = 45;
      goto LABEL_3;
    }

    v8 = var12(self->_UVFSNode, uTF8String, &v30);
    if (!v8)
    {
      if ([(userFSVolume *)self->volume supportsHardLinks])
      {
        v13 = [NSMutableData dataWithLength:184];
        v14 = v13;
        if (v13)
        {
          bytes = [v13 bytes];
          if (bytes)
          {
            v16 = bytes;
            if (!(self->FSOps->var10)(v30, bytes))
            {
              v17 = v16[1];
              if ((v17 & 1) != 0 && (v17 & 0x100) != 0 && *(v16 + 6) != 2)
              {
                v29 = 0;
                volume = self->volume;
                v19 = [liveFSNode FileProviderFileHandleForFileID:v16[8]];
                *node = [(userFSVolume *)volume getNodeForFH:v19 withError:&v29];

                if (*node)
                {
                  if (!v29)
                  {
                    v20 = userfs_log_default;
                    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
                    {
                      v25 = v16[8];
                      v26 = *node;
                      v27 = v20;
                      uVFSNode = [v26 UVFSNode];
                      *buf = 134218754;
                      selfCopy = self;
                      v33 = 2048;
                      v34 = v25;
                      v35 = 2112;
                      v36 = lookupCopy;
                      v37 = 2048;
                      v38 = uVFSNode;
                      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "LFN[%p]: inode [%llu] of file %@ already exists. using UVFSFileNode: %p", buf, 0x2Au);
                    }

                    [(userFSVolume *)self->volume insertIntoNameCache:*node withParent:self withName:lookupCopy];
                    v21 = *node;
                    lfn_seqno = [*node lfn_seqno];
                    [v21 setLfn_seqno:lfn_seqno + 1];
                    v16[2] = lfn_seqno;
                    [*node setCachedAttrs:v14];
                    [*node updateName:lookupCopy andParent:self];
                    (self->FSOps->var13)(v30, 0);

                    goto LABEL_2;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v14 = 0;
      }

      v23 = [liveFSNode alloc];
      v24 = [(liveFSNode *)v23 initWithVolume:self->volume andParent:self andName:lookupCopy andUVFSNode:v30];
      *node = v24;
      if (v24)
      {
        v8 = 0;
      }

      else
      {
        (self->FSOps->var13)(v30, 0);
        v8 = 12;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100024004();
    }

    v8 = 22;
  }

LABEL_3:

  return v8;
}

- (int)readSymLinkDataInto:(void *)into ofSize:(int)size withSymLinkDataSize:(unint64_t *)dataSize andWithSymLinkAttrData:(id *)data
{
  *data = 0;
  FSOps = self->FSOps;
  if (!FSOps)
  {
    return 45;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  var14 = FSOps->var14;
  if (!var14)
  {
    return 45;
  }

  UVFSNode = self->_UVFSNode;
  if (!UVFSNode)
  {
    return 22;
  }

  v11 = var14(UVFSNode, into, size, dataSize, v16);
  if (!v11)
  {
    v12 = [NSMutableData dataWithBytes:v16 length:184];
    if (v12)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->attrsData, v12);
      v14 = v12;
      *data = v12;
      objc_sync_exit(selfCopy);

      v11 = 0;
    }

    else
    {
      v11 = 12;
    }
  }

  return v11;
}

- (int)readUncompressedData:(unint64_t)data intoDataBuffer:(id)buffer withLengthOut:(unint64_t *)out
{
  bufferCopy = buffer;
  v19 = 0;
  v9 = [bufferCopy length];
  *out = 0;
  v18 = 0;
  v10 = [(liveFSNode *)self decmpfsFetchCompressedHeader:&v18];
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100024124();
    }

    goto LABEL_25;
  }

  v12 = *(v18 + 12);
  if (v12 <= data)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100024194(&v18);
    }

    goto LABEL_18;
  }

  if (v9 + data > v12)
  {
    v9 = v12 - data;
  }

  if (!decmpGetFunc(*(v18 + 8), 1))
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100024290();
    }

    v11 = 45;
    goto LABEL_25;
  }

  if (v9 < 1)
  {
LABEL_18:
    v11 = 0;
    goto LABEL_25;
  }

  v13 = 0;
  while (1)
  {
    data += v13;
    v14 = v9 >= 0x10000 ? 0x10000 : v9;
    v17[0] = [bufferCopy mutableBytes] + *out;
    v17[1] = v14;
    v15 = [(liveFSNode *)self fetchUncompressedData:v18 offset:data length:v9 vectorSize:1 vector:v17 withLengthOut:&v19];
    if (v15)
    {
      break;
    }

    v13 = v19;
    *out += v19;
    v9 -= v13;
    if (v9 <= 0)
    {
      goto LABEL_18;
    }
  }

  v11 = v15;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100024220();
  }

  *out = 0;
LABEL_25:

  return v11;
}

- (int)readData:(unint64_t)data intoDataBuffer:(id)buffer withLengthOut:(unint64_t *)out
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  FSOps = self->FSOps;
  if (FSOps && !self->isFSCompressed)
  {
    if (FSOps->var15)
    {
      goto LABEL_4;
    }

LABEL_10:
    v13 = 45;
    goto LABEL_16;
  }

  if (!FSOps->var36)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (out && bufferCopy && (UVFSNode = self->_UVFSNode) != 0)
  {
    if (self->isFSCompressed)
    {
      v12 = [(liveFSNode *)self readUncompressedData:data intoDataBuffer:bufferCopy withLengthOut:out];
    }

    else
    {
      v12 = (FSOps->var15)(UVFSNode, data, [bufferCopy length], objc_msgSend(bufferCopy, "mutableBytes"), out);
    }

    v13 = v12;
  }

  else
  {
    if (out)
    {
      *out = 0;
    }

    v13 = 22;
  }

LABEL_16:

  return v13;
}

- (int)writeData:(unint64_t)data fromBuffer:(id)buffer withLengthOut:(unint64_t *)out
{
  bufferCopy = buffer;
  FSOps = self->FSOps;
  if (FSOps && FSOps->var16)
  {
    if (self->isFSCompressed)
    {
      v10 = 1;
    }

    else if ([(userFSVolume *)self->volume readOnly])
    {
      v10 = 30;
    }

    else if (out && bufferCopy && (UVFSNode = self->_UVFSNode) != 0)
    {
      v10 = (self->FSOps->var16)(UVFSNode, data, [bufferCopy length], objc_msgSend(bufferCopy, "bytes"), out);
      selfCopy = self;
      objc_sync_enter(selfCopy);
      attrsData = selfCopy->attrsData;
      selfCopy->attrsData = 0;

      objc_sync_exit(selfCopy);
    }

    else
    {
      if (out)
      {
        *out = 0;
      }

      v10 = 22;
    }
  }

  else
  {
    v10 = 45;
  }

  return v10;
}

- (int)createDirEntry:(id)entry withAttrs:(id)attrs withData:(id)data withResultingNode:(id *)node
{
  entryCopy = entry;
  attrsCopy = attrs;
  dataCopy = data;
  *node = 0;
  if (!self->FSOps)
  {
    goto LABEL_21;
  }

  if ([(userFSVolume *)self->volume readOnly])
  {
    v13 = 30;
    goto LABEL_22;
  }

  if (!self->_UVFSNode)
  {
    goto LABEL_12;
  }

  v34 = 0;
  mutableBytes = [attrsCopy mutableBytes];
  v15 = mutableBytes;
  v16 = mutableBytes[1];
  if ((v16 & 2) == 0)
  {
    mutableBytes[1] = v16 | 2;
    *(mutableBytes + 7) |= 0x1C0u;
  }

  v17 = *(mutableBytes + 6);
  if (v17 != 3)
  {
    if (v17 == 2)
    {
      var18 = self->FSOps->var18;
      if (var18)
      {
        UVFSNode = self->_UVFSNode;
        uTF8String = [entryCopy UTF8String];
        v22 = UVFSNode;
        bytes = v15;
        goto LABEL_15;
      }

LABEL_21:
      v13 = 45;
      goto LABEL_22;
    }

    if (v17 == 1)
    {
      var18 = self->FSOps->var17;
      if (var18)
      {
        v19 = self->_UVFSNode;
        uTF8String2 = [entryCopy UTF8String];
        bytes = [attrsCopy bytes];
        v22 = v19;
        uTF8String = uTF8String2;
LABEL_15:
        v25 = var18(v22, uTF8String, bytes, &v34);
        goto LABEL_18;
      }

      goto LABEL_21;
    }

LABEL_12:
    v13 = 22;
    goto LABEL_22;
  }

  var19 = self->FSOps->var19;
  if (!var19)
  {
    goto LABEL_21;
  }

  v25 = var19(self->_UVFSNode, [entryCopy UTF8String], objc_msgSend(dataCopy, "UTF8String"), mutableBytes, &v34);
LABEL_18:
  v13 = v25;
  if (!v25)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    attrsData = selfCopy->attrsData;
    selfCopy->attrsData = 0;

    objc_sync_exit(selfCopy);
    v29 = [liveFSNode alloc];
    v30 = [(liveFSNode *)v29 initWithVolume:self->volume andParent:selfCopy andName:entryCopy andUVFSNode:v34];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
      v13 = 0;
      *node = v31;
    }

    else
    {
      (self->FSOps->var13)(v34, 0);
      v13 = 12;
    }
  }

LABEL_22:

  return v13;
}

- (int)remove:(int)remove named:(id)named node:(id)node usingFlags:(int)flags
{
  namedCopy = named;
  nodeCopy = node;
  if (!self->FSOps)
  {
    goto LABEL_12;
  }

  if ([(userFSVolume *)self->volume readOnly])
  {
    v11 = 30;
    goto LABEL_13;
  }

  UVFSNode = self->_UVFSNode;
  if (!UVFSNode)
  {
    goto LABEL_10;
  }

  if (remove == 2)
  {
    var21 = self->FSOps->var21;
    if (var21)
    {
      goto LABEL_8;
    }

LABEL_12:
    v11 = 45;
    goto LABEL_13;
  }

  if (remove != 1)
  {
LABEL_10:
    v11 = 22;
    goto LABEL_13;
  }

  var21 = self->FSOps->var20;
  if (!var21)
  {
    goto LABEL_12;
  }

LABEL_8:
  uTF8String = [namedCopy UTF8String];
  if (nodeCopy)
  {
    v15 = nodeCopy[10];
  }

  else
  {
    v15 = 0;
  }

  v11 = var21(UVFSNode, uTF8String, v15);
  if (!v11)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    attrsData = selfCopy->attrsData;
    selfCopy->attrsData = 0;

    objc_sync_exit(selfCopy);
  }

LABEL_13:

  return v11;
}

- (int)link:(id)link withName:(id)name fileAttrOut:(id *)out dirAttrOut:(id *)attrOut
{
  linkCopy = link;
  nameCopy = name;
  *out = 0;
  *attrOut = 0;
  FSOps = self->FSOps;
  if (FSOps && FSOps->var25)
  {
    if ([(userFSVolume *)self->volume readOnly])
    {
      v13 = 30;
    }

    else if (self->_UVFSNode)
    {
      v15 = [NSMutableData dataWithLength:184];
      v16 = [NSMutableData dataWithLength:184];
      v17 = v16;
      v13 = 12;
      if (v15 && v16)
      {
        v13 = (self->FSOps->var25)(self->_UVFSNode, linkCopy[10], [nameCopy UTF8String], objc_msgSend(v15, "mutableBytes"), objc_msgSend(v16, "mutableBytes"));
        if (v13)
        {
          v18 = linkCopy;
          objc_sync_enter(v18);
          v19 = v18[3];
          v18[3] = 0;
        }

        else
        {
          lfn_seqno = [(liveFSNode *)self lfn_seqno];
          [(liveFSNode *)self setLfn_seqno:lfn_seqno + 1];
          *([v15 mutableBytes] + 2) = lfn_seqno;
          lfn_seqno2 = [linkCopy lfn_seqno];
          [linkCopy setLfn_seqno:lfn_seqno2 + 1];
          *([v17 mutableBytes] + 2) = lfn_seqno2;
          v22 = v15;
          *out = v15;
          v23 = v17;
          *attrOut = v17;
          v24 = linkCopy;
          objc_sync_enter(v24);
          v25 = v17;
          v19 = v24[3];
          v24[3] = v25;
        }

        objc_sync_exit(linkCopy);
        selfCopy = self;
        objc_sync_enter(selfCopy);
        attrsData = selfCopy->attrsData;
        selfCopy->attrsData = 0;

        objc_sync_exit(selfCopy);
      }
    }

    else
    {
      v13 = 22;
    }
  }

  else
  {
    v13 = 45;
  }

  return v13;
}

- (int)readDirectoryEntries:(id)entries withCookie:(unint64_t)cookie withLengthOut:(int64_t *)out andWithVerifier:(unint64_t *)verifier
{
  entriesCopy = entries;
  v11 = entriesCopy;
  FSOps = self->FSOps;
  if (FSOps && (var23 = FSOps->var23) != 0)
  {
    UVFSNode = self->_UVFSNode;
    if (UVFSNode)
    {
      v15 = var23(UVFSNode, [entriesCopy mutableBytes], objc_msgSend(entriesCopy, "length"), cookie, out, verifier);
    }

    else
    {
      v15 = 22;
    }
  }

  else
  {
    v15 = 45;
  }

  return v15;
}

- (int)readDirectoryEntriesWithAttrs:(id)attrs withCookie:(unint64_t)cookie withLengthOut:(int64_t *)out andWithVerifier:(unint64_t *)verifier
{
  attrsCopy = attrs;
  v11 = attrsCopy;
  FSOps = self->FSOps;
  if (FSOps && (var24 = FSOps->var24) != 0)
  {
    UVFSNode = self->_UVFSNode;
    if (UVFSNode)
    {
      v15 = var24(UVFSNode, [attrsCopy mutableBytes], objc_msgSend(attrsCopy, "length"), cookie, out, verifier);
    }

    else
    {
      v15 = 22;
    }
  }

  else
  {
    v15 = 45;
  }

  return v15;
}

- (int)statFS:(id *)s
{
  *s = 0;
  FSOps = self->FSOps;
  if (!FSOps || !FSOps->var8)
  {
    return 45;
  }

  if (!self->_UVFSNode)
  {
    return 22;
  }

  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  v20 = 0;
  v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_f_bsize" andResult:&v20];
  v7 = v20;
  v8 = v7;
  if (!v6)
  {
    v9 = *[v7 bytes];
    v21[0] = v9;

    v19 = 0;
    v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_f_blocks" andResult:&v19];
    v10 = v19;
    v8 = v10;
    if (!v6)
    {
      v21[1] = *[v10 bytes] * v9;

      v18 = 0;
      v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_f_bavail" andResult:&v18];
      v11 = v18;
      v8 = v11;
      if (!v6)
      {
        *&v22 = *[v11 bytes] * v9;

        v17 = 0;
        v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_f_bfree" andResult:&v17];
        v12 = v17;
        v8 = v12;
        if (!v6)
        {
          *(&v22 + 1) = *[v12 bytes] * v9;

          v16 = 0;
          v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_f_bused" andResult:&v16];
          v13 = v16;
          v8 = v13;
          if (!v6)
          {
            *v23 = *[v13 bytes] * v9;

            *&v23[8] = xmmword_100034110;
            v14 = [NSData dataWithBytes:v21 length:56];
            v8 = 0;
            *s = v14;
            if (v14)
            {
              v6 = 0;
            }

            else
            {
              v6 = 12;
            }
          }
        }
      }
    }
  }

  return v6;
}

- (int)pathConf:(id *)conf
{
  *conf = 0;
  FSOps = self->FSOps;
  if (!FSOps || !FSOps->var8)
  {
    return 45;
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_PC_LINK_MAX" andResult:&v18];
  v7 = v18;
  v8 = v7;
  if (!v6)
  {
    LODWORD(v19) = *[v7 bytes];

    v17 = 0;
    v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_PC_NAME_MAX" andResult:&v17];
    v9 = v17;
    v8 = v9;
    if (!v6)
    {
      HIDWORD(v19) = *[v9 bytes];

      BYTE4(v20) = 2;
      v16 = 0;
      v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_caps_format" andResult:&v16];
      v10 = v16;
      v8 = v10;
      if (!v6)
      {
        v11 = (*[v10 bytes] >> 6) & 4;
        BYTE4(v20) = (v11 | (*[v8 bytes] >> 6) & 8) ^ 6;

        v15 = 0;
        v6 = [(liveFSNode *)self getFileSystemAttribute:@"_N_PC_FILESIZEBITS" andResult:&v15];
        v12 = v15;
        v8 = v12;
        if (!v6)
        {
          LODWORD(v20) = *[v12 bytes];

          v13 = [NSData dataWithBytes:&v19 length:16];
          v8 = 0;
          *conf = v13;
          if (v13)
          {
            v6 = 0;
          }

          else
          {
            v6 = 12;
          }
        }
      }
    }
  }

  return v6;
}

- (int)reclaim
{
  FSOps = self->FSOps;
  if (!FSOps || !FSOps->var13 || !self->_UVFSNode)
  {
    return 0;
  }

  if (self->isFSCompressed)
  {
    if (self->streamNode)
    {
      var35 = FSOps->var35;
      if (var35)
      {
        v5 = var35();
        if (v5)
        {
          v6 = v5;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000242CC();
          }

          return v6;
        }

        self->streamNode = 0;
        self->isFSCompressed = 0;
      }
    }
  }

  volume = self->volume;
  if (volume)
  {
    volumeRawDevice = [(userFSVolume *)volume volumeRawDevice];
    deviceIsClosed = [volumeRawDevice deviceIsClosed];
  }

  else
  {
    deviceIsClosed = 0;
  }

  result = (self->FSOps->var13)(self->_UVFSNode, deviceIsClosed);
  self->_UVFSNode = 0;
  return result;
}

- (int)getXAttr:(id)attr withBuffer:(id *)buffer
{
  attrCopy = attr;
  v7 = attrCopy;
  *buffer = 0;
  FSOps = self->FSOps;
  if (FSOps && (var27 = FSOps->var27) != 0)
  {
    UVFSNode = self->_UVFSNode;
    if (UVFSNode)
    {
      v17 = 0;
      v11 = var27(UVFSNode, [attrCopy UTF8String], 0, 0, &v17);
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = v17 == 0;
      }

      if (!v12)
      {
        v13 = [NSMutableData dataWithLength:?];
        if (v13)
        {
          v14 = v13;
          v11 = (self->FSOps->var27)(self->_UVFSNode, [v7 UTF8String], objc_msgSend(v14, "mutableBytes"), objc_msgSend(v14, "length"), &v17);
          if (!v11)
          {
            v15 = v14;
            *buffer = v14;
          }
        }

        else
        {
          v11 = 12;
        }
      }
    }

    else
    {
      v11 = 22;
    }
  }

  else
  {
    v11 = 45;
  }

  return v11;
}

- (int)listXattr:(id *)xattr
{
  *xattr = &__NSArray0__struct;
  FSOps = self->FSOps;
  if (!FSOps)
  {
    return 45;
  }

  var29 = FSOps->var29;
  if (!var29)
  {
    return 45;
  }

  UVFSNode = self->_UVFSNode;
  if (!UVFSNode)
  {
    return 22;
  }

  v21 = 0;
  v8 = var29(UVFSNode, 0, 0, &v21);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v21 == 0;
  }

  if (!v9)
  {
    v10 = [NSMutableData dataWithLength:?];
    v11 = v10;
    if (v10)
    {
      v8 = (self->FSOps->var29)(self->_UVFSNode, [v10 mutableBytes], objc_msgSend(v10, "length"), &v21);
      if (v8)
      {
        v12 = 1;
      }

      else
      {
        v12 = v21 == 0;
      }

      if (!v12)
      {
        bytes = [v11 bytes];
        v14 = v21;
        if (bytes[v21 - 1])
        {
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10002433C();
          }

          v8 = 5;
        }

        else
        {
          v16 = bytes;
          for (i = +[NSMutableArray array];
          {
            if (*v16)
            {
              v18 = [NSString stringWithUTF8String:v16];
              [i addObject:v18];

              v19 = strlen(v16) + 1;
              v14 -= v19;
            }

            else
            {
              --v14;
              v19 = 1;
            }
          }

          v20 = i;
          *xattr = i;

          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 12;
    }
  }

  return v8;
}

- (void)createFilterAttr:(_LIFileAttributes *)attr FromCriteria:(id)criteria
{
  criteriaCopy = criteria;
  *&attr->var0 = 0u;
  *&attr->var2 = 0u;
  *&attr->var5 = 0u;
  *&attr->var9 = 0u;
  *&attr->var11 = 0u;
  attr->var13 = 0u;
  attr->var14 = 0u;
  attr->var15 = 0u;
  attr->var16 = 0u;
  attr->var17 = 0u;
  attr->var18 = 0u;
  *&attr->var19 = 0;
  v16 = criteriaCopy;
  v6 = [criteriaCopy objectForKeyedSubscript:LISearchObjTypeReturnAll];

  if (v6)
  {
    v7 = 7;
LABEL_7:
    v10 = v16;
LABEL_8:
    attr->var3 = v7;
    attr->var1 |= 1uLL;
    goto LABEL_9;
  }

  v8 = [v16 objectForKeyedSubscript:LISearchObjTypeReturnFiles];

  if (v8)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v9 = [v16 objectForKeyedSubscript:LISearchObjTypeReturnDirs];

  if (v9)
  {
    v7 = 2;
    goto LABEL_7;
  }

  v15 = [v16 objectForKeyedSubscript:LISearchObjTypeReturnLinks];

  v10 = v16;
  if (v15)
  {
    v7 = 4;
    goto LABEL_8;
  }

LABEL_9:
  v11 = [v10 objectForKeyedSubscript:LISearchObjModifiedAfter];

  if (v11)
  {
    v12 = [v16 objectForKeyedSubscript:LISearchObjModifiedAfter];
    [v12 timeIntervalSince1970];
    attr->var14.tv_sec = v13;
    [v12 timeIntervalSince1970];
    attr->var14.tv_nsec = ((v14 - attr->var14.tv_sec) * 1000000.0);
    attr->var1 |= 0x800uLL;
  }
}

- (void)createScanDirSearchRequest:(_scandir_matching_request *)request withFilter:(_LIFileAttributes *)filter withCookie:(unint64_t *)cookie withCookieVerifier:(unint64_t *)verifier fromSearchCriteria:(id)criteria
{
  criteriaCopy = criteria;
  [(liveFSNode *)self createFilterAttr:filter FromCriteria:criteriaCopy];
  v12 = *cookie;
  request->var2 = filter;
  request->var3 = v12;
  request->var4 = *verifier;
  v13 = [criteriaCopy objectForKeyedSubscript:LISearchFileNameContains];

  if (v13)
  {
    v14 = [criteriaCopy objectForKeyedSubscript:LISearchFileNameContains];
    request->var0 = malloc_type_calloc(8uLL, [v14 count] + 1, 0x10040436913F5uLL);
    if ([v14 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        request->var0[v15] = [v16 UTF8String];

        ++v15;
      }

      while ([v14 count] > v15);
    }
  }

  v17 = [criteriaCopy objectForKeyedSubscript:LISearchFileNameEndsWith];

  v18 = criteriaCopy;
  if (v17)
  {
    v19 = [criteriaCopy objectForKeyedSubscript:LISearchFileNameEndsWith];
    request->var1 = malloc_type_calloc(8uLL, [v19 count] + 1, 0x10040436913F5uLL);
    if ([v19 count])
    {
      v20 = 0;
      do
      {
        v21 = [v19 objectAtIndexedSubscript:v20];
        request->var1[v20] = [v21 UTF8String];

        ++v20;
      }

      while ([v19 count] > v20);
    }

    v18 = criteriaCopy;
  }
}

- (int)scanDirectoryForMatches:(id)matches withScanDirCookie:(unint64_t *)cookie withScanDirCookieVerifier:(unint64_t *)verifier withSearchResultType:(int *)type withSearchResult:(id *)result withSearchResultAttr:(_LIFileAttributes *)attr
{
  matchesCopy = matches;
  FSOps = self->FSOps;
  if (FSOps && FSOps->var30)
  {
    if (self->_UVFSNode)
    {
      v31 = 0;
      v32 = 0;
      *v29 = 0u;
      v30 = 0u;
      memset(v35, 0, sizeof(v35));
      v36 = 0;
      v33 = 0;
      v34 = 0;
      *result = 0;
      [(liveFSNode *)self createScanDirSearchRequest:v29 withFilter:v35 withCookie:cookie withCookieVerifier:verifier fromSearchCriteria:matchesCopy];
      [(liveFSNode *)self createScanDirReplyRequest:&v32];
      v16 = (self->FSOps->var30)(self->_UVFSNode, v29, &v32);
      if (!v16)
      {
        *result = [NSString stringWithUTF8String:v33 + *(v33 + 5)];
        v17 = v33;
        v18 = v34;
        v19 = *(v33 + 4);
        v21 = *(v33 + 1);
        v20 = *(v33 + 2);
        *&attr->var5 = *(v33 + 3);
        *&attr->var9 = v19;
        *&attr->var0 = v21;
        *&attr->var2 = v20;
        v22 = *(v17 + 8);
        v24 = *(v17 + 5);
        v23 = *(v17 + 6);
        attr->var14 = *(v17 + 7);
        attr->var15 = v22;
        *&attr->var11 = v24;
        attr->var13 = v23;
        v26 = *(v17 + 10);
        v25 = *(v17 + 11);
        v27 = *(v17 + 9);
        *&attr->var19 = *(v17 + 24);
        attr->var17 = v26;
        attr->var18 = v25;
        attr->var16 = v27;
        *cookie = *v17;
        *verifier = v18;
        *type = v32;
      }

      free(v29[0]);
      free(v29[1]);
      free(v33);
    }

    else
    {
      v16 = 22;
    }
  }

  else
  {
    v16 = 45;
  }

  return v16;
}

- (int)setFileSystemAttributes:(id)attributes toValue:(id)value andResult:(id *)result
{
  attributesCopy = attributes;
  valueCopy = value;
  v10 = valueCopy;
  FSOps = self->FSOps;
  if (FSOps && FSOps->var9)
  {
    if (self->_UVFSNode)
    {
      if (result)
      {
        *result = 0;
      }

      v12 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [valueCopy length]);
      bzero([v12 mutableBytes], objc_msgSend(v10, "length"));
      v13 = (self->FSOps->var9)(self->_UVFSNode, [attributesCopy UTF8String], objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"), objc_msgSend(v12, "mutableBytes"), objc_msgSend(v12, "length"));
      v14 = v13;
      if (result && !v13)
      {
        v15 = v12;
        *result = v12;
      }
    }

    else
    {
      v12 = 0;
      v14 = 22;
    }
  }

  else
  {
    v12 = 0;
    v14 = 45;
  }

  return v14;
}

@end