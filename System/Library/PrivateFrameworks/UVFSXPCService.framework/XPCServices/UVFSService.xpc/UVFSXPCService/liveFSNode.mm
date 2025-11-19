@interface liveFSNode
+ (id)FileProviderFileHandleForFileID:(unint64_t)a3;
- (BOOL)verifyFileIsFSCompressed:(int *)a3;
- (NSData)getAttrData;
- (int)createDirEntry:(id)a3 withAttrs:(id)a4 withData:(id)a5 withResultingNode:(id *)a6;
- (int)decmpfsFetchCompressedHeader:(id *)a3;
- (int)getAttribute:(id *)a3;
- (int)getDeviceFD;
- (int)getFileSystemAttribute:(id)a3 andResult:(id *)a4;
- (int)getXAttr:(id)a3 withBuffer:(id *)a4;
- (int)hiddenStatus;
- (int)link:(id)a3 withName:(id)a4 fileAttrOut:(id *)a5 dirAttrOut:(id *)a6;
- (int)listXattr:(id *)a3;
- (int)lookup:(id)a3 withResultingNode:(id *)a4;
- (int)pathConf:(id *)a3;
- (int)readData:(unint64_t)a3 intoDataBuffer:(id)a4 withLengthOut:(unint64_t *)a5;
- (int)readDirectoryEntries:(id)a3 withCookie:(unint64_t)a4 withLengthOut:(int64_t *)a5 andWithVerifier:(unint64_t *)a6;
- (int)readDirectoryEntriesWithAttrs:(id)a3 withCookie:(unint64_t)a4 withLengthOut:(int64_t *)a5 andWithVerifier:(unint64_t *)a6;
- (int)readSymLinkDataInto:(void *)a3 ofSize:(int)a4 withSymLinkDataSize:(unint64_t *)a5 andWithSymLinkAttrData:(id *)a6;
- (int)readUncompressedData:(unint64_t)a3 intoDataBuffer:(id)a4 withLengthOut:(unint64_t *)a5;
- (int)reclaim;
- (int)remove:(int)a3 named:(id)a4 node:(id)a5 usingFlags:(int)a6;
- (int)scanDirectoryForMatches:(id)a3 withScanDirCookie:(unint64_t *)a4 withScanDirCookieVerifier:(unint64_t *)a5 withSearchResultType:(int *)a6 withSearchResult:(id *)a7 withSearchResultAttr:(_LIFileAttributes *)a8;
- (int)setAttributeTo:(id)a3 withResultingAttribute:(id *)a4;
- (int)setFileSystemAttributes:(id)a3 toValue:(id)a4 andResult:(id *)a5;
- (int)statFS:(id *)a3;
- (int)syncTheFileSystem:(unint64_t)a3;
- (int)unloadFileSystem:(int)a3;
- (int)updateName:(id)a3 andParent:(id)a4;
- (int)writeData:(unint64_t)a3 fromBuffer:(id)a4 withLengthOut:(unint64_t *)a5;
- (liveFSNode)initWithVolume:(id)a3 andParent:(id)a4 andName:(id)a5 andUVFSNode:(void *)a6;
- (liveFSNode)initWithVolume:(id)a3 andRootUVFSNode:(void *)a4;
- (unsigned)decmpfsGetDirectoryEntries:(id *)a3;
- (unsigned)getLinkCount;
- (void)createFilterAttr:(_LIFileAttributes *)a3 FromCriteria:(id)a4;
- (void)createScanDirSearchRequest:(_scandir_matching_request *)a3 withFilter:(_LIFileAttributes *)a4 withCookie:(unint64_t *)a5 withCookieVerifier:(unint64_t *)a6 fromSearchCriteria:(id)a7;
- (void)dealloc;
- (void)forceUpdateAttrs;
- (void)forceUpdateLinkCount;
- (void)getCompressionFileInfo;
- (void)setCachedAttrs:(id)a3;
@end

@implementation liveFSNode

+ (id)FileProviderFileHandleForFileID:(unint64_t)a3
{
  v7 = a3;
  v3 = [NSData dataWithBytes:&v7 length:8];
  v4 = [v3 base64EncodedStringWithOptions:1];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  return v5;
}

- (liveFSNode)initWithVolume:(id)a3 andRootUVFSNode:(void *)a4
{
  v7 = a3;
  v8 = [(liveFSNode *)self init];
  v9 = v8;
  if (v8)
  {
    v8->_UVFSNode = a4;
    v10 = [v7 volumeRawDevice];
    v11 = [v10 fsPlugin];
    v9->FSOps = [v11 FSOps];

    objc_storeStrong(&v9->volume, a3);
    v9->isFSCompressed = 0;
    v9->streamNode = 0;
    v9->_lfn_fileid = 2;
    v12 = [liveFSNode FileProviderFileHandleForFileID:[(liveFSNode *)v9 lfn_fileid]];
    lfn_fh = v9->_lfn_fh;
    v9->_lfn_fh = v12;

    v9->_lfn_wasWritten = 0;
    v14 = [(userFSVolume *)v9->volume appleDoubleManager];
    v9->_lfn_check_appledouble = v14 != 0;

    v15 = [LiveFSXattrCache xattrCacheWithMaxItems:4 andMaxItemSize:64];
    lfn_xattrCache = v9->_lfn_xattrCache;
    v9->_lfn_xattrCache = v15;
  }

  return v9;
}

- (liveFSNode)initWithVolume:(id)a3 andParent:(id)a4 andName:(id)a5 andUVFSNode:(void *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(liveFSNode *)self init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v14->volume, a3);
  v15->_UVFSNode = a6;
  v16 = [v11 volumeRawDevice];
  v17 = [v16 fsPlugin];
  v15->FSOps = [v17 FSOps];

  v15->isFSCompressed = 0;
  v15->streamNode = 0;
  v18 = [(liveFSNode *)v15 getAttrData];
  v19 = v18;
  if (!v18)
  {
    p_attrsData = &v15->attrsData;
    if (v15->attrsData)
    {
      v35 = a6;
      v22 = 0;
      goto LABEL_8;
    }

LABEL_16:

    v15 = 0;
    goto LABEL_17;
  }

  if (![v18 bytes])
  {
    goto LABEL_16;
  }

  p_attrsData = &v15->attrsData;
  attrsData = v15->attrsData;
  if (!attrsData)
  {
    goto LABEL_16;
  }

  v35 = a6;
  v22 = *([(NSMutableData *)attrsData bytes]+ 8);
  v23 = [*p_attrsData mutableBytes];
  v23[1] |= 0x100uLL;
LABEL_8:
  v24 = v22;
  if (![(userFSVolume *)v15->volume supportsPersistentObjectIdentifier])
  {
    v24 = [(userFSVolume *)v15->volume getNextObjectIdentifier];
  }

  if (v19 && (*([*p_attrsData bytes] + 44) & 0x20) != 0)
  {
    [(liveFSNode *)v15 getCompressionFileInfo];
  }

  objc_storeStrong(&v15->_lfn_name, a5);
  objc_storeStrong(&v15->_lfn_parent, a4);
  v15->_lfn_fileid = v22;
  v25 = [liveFSNode FileProviderFileHandleForFileID:v24];
  lfn_fh = v15->_lfn_fh;
  v15->_lfn_fh = v25;

  v15->_lfn_wasWritten = 0;
  v27 = [(userFSVolume *)v15->volume appleDoubleManager];
  v15->_lfn_check_appledouble = v27 != 0;

  v28 = [LiveFSXattrCache xattrCacheWithMaxItems:4 andMaxItemSize:64];
  lfn_xattrCache = v15->_lfn_xattrCache;
  v15->_lfn_xattrCache = v28;

  [(userFSVolume *)v15->volume insertIntoFHCache:v15];
  [(userFSVolume *)v15->volume insertIntoNameCache:v15 withParent:v12];
  v30 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v32 = v15->_lfn_fh;
    v33 = v30;
    v34 = [v12 lfn_fh];
    *buf = 134219010;
    v37 = v15;
    v38 = 2112;
    v39 = v13;
    v40 = 2112;
    v41 = v32;
    v42 = 2048;
    v43 = v35;
    v44 = 2112;
    v45 = v34;
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

    v3 = [(liveFSNode *)self reclaim];
    if (v3)
    {
      v4 = v3;
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

  v3 = [(liveFSNode *)self getAttrData];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(liveFSNode *)self getAttrData];
  v6 = [v5 bytes];
  if (!v6 || (v7 = v6, v8 = v6[1], (v8 & 1) == 0) || *(v6 + 6) == 2)
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

  v3 = [(liveFSNode *)self lfn_name];
  v4 = [v3 hasPrefix:@"."];

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
  v2 = self;
  objc_sync_enter(v2);
  attrsData = v2->attrsData;
  v2->attrsData = 0;

  objc_sync_exit(v2);
  v4 = [(liveFSNode *)v2 getAttrData];
}

- (void)forceUpdateLinkCount
{
  if ([(userFSVolume *)self->volume supportsHardLinks])
  {

    [(liveFSNode *)self forceUpdateAttrs];
  }
}

- (int)updateName:(id)a3 andParent:(id)a4
{
  v6 = a4;
  [(liveFSNode *)self setLfn_name:a3];
  [(liveFSNode *)self setLfn_parent:v6];

  return 0;
}

- (int)unloadFileSystem:(int)a3
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

  if ((a3 & 8) != 0)
  {
    v6 = 3;
  }

  else
  {
    v6 = a3 & 1;
  }

  result = var7(self->_UVFSNode, v6);
  if (!result)
  {
    self->_UVFSNode = 0;
  }

  return result;
}

- (int)syncTheFileSystem:(unint64_t)a3
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

  v4 = a3;
  if ([(userFSVolume *)self->volume readOnly]|| !self->_UVFSNode)
  {
    return 0;
  }

  v6 = self->FSOps;
  if ((v4 & 2) == 0 || (var5 = v6->var6) == 0)
  {
    var5 = v6->var5;
  }

  return var5();
}

- (int)getFileSystemAttribute:(id)a3 andResult:(id *)a4
{
  v7 = a3;
  v8 = [a3 UTF8String];
  v32 = 0;
  v33 = 0;
  *a4 = 0;
  if (!strcmp(v8, "_S_f_location"))
  {
    v17 = [(userFSVolume *)self->volume volumeRawDevice];
    v18 = [v17 deviceName];
    v19 = [NSString stringWithFormat:@"/dev/%@", v18];

    v20 = [v19 UTF8String];
    v21 = [NSData dataWithBytes:v20 length:strlen(v20) + 1];
    *a4 = v21;
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

  if (!strcmp(v8, "_B_has_perm_enforcement") || !strcmp(v8, "_B_has_access_check"))
  {
    LOBYTE(v33) = 0;
LABEL_16:
    v16 = [[NSData alloc] initWithBytes:&v33 length:8];
    *a4 = v16;
    if (v16)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  if (!strcmp(v8, "_N_mntflags"))
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

  if (!strcmp(v8, "_O_f_uuid"))
  {
    v34[0] = 0;
    v34[1] = 0;
    v9 = [NSUUID alloc];
    v10 = [(userFSVolume *)self->volume volumeName];
    v11 = [v9 initWithUUIDString:v10];
    [v11 getUUIDBytes:v34];

    *a4 = [NSData dataWithBytes:v34 length:16];
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

  if (*v8 == 95)
  {
    v14 = *(v8 + 1);
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
      v30 = [v27 mutableBytes];
      v15 = v28(UVFSNode, v8, v30, v32, &v32);
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
        *a4 = v27;
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

- (int)getAttribute:(id *)a3
{
  *a3 = 0;
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
      *a3 = v7;
    }
  }

  else
  {
    v8 = 12;
  }

  return v8;
}

- (int)decmpfsFetchCompressedHeader:(id *)a3
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
    *a3 = [v6 mutableBytes];
    **a3 = [v5 length];
    v8 = [v5 bytes];
    v9 = *a3;
    *(v9 + 4) = *v8;
    *(v9 + 12) = v8[1];
    memcpy(*a3 + 20, v8 + 2, [v5 length] - 16);
    if (*(*a3 + 1) == 1668116582)
    {
      if (*(*a3 + 2) < 0xFFu || [(liveFSNode *)self decmpfsTypeIsDataless:?])
      {
        v10 = 0;
        goto LABEL_20;
      }

      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100023A3C(a3);
      }
    }

    else if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000239B0(a3);
    }

    v10 = 22;
LABEL_18:
    if (!*a3)
    {
      goto LABEL_20;
    }

LABEL_19:
    *a3 = 0;
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

- (unsigned)decmpfsGetDirectoryEntries:(id *)a3
{
  if (a3->var1 == 1668116582 && a3->var2 == -2147483646)
  {
    return *(&a3->var2 + 1) >> 40;
  }

  else
  {
    return *(&a3->var2 + 1);
  }
}

- (BOOL)verifyFileIsFSCompressed:(int *)a3
{
  v10 = 0;
  if ((*([(NSMutableData *)self->attrsData mutableBytes]+ 44) & 0x20) == 0)
  {
    goto LABEL_2;
  }

  v6 = [(liveFSNode *)self decmpfsFetchCompressedHeader:&v10];
  *a3 = v6;
  if (v6)
  {
    v5 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      goto LABEL_16;
    }

    sub_100023AF0(a3);
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

- (void)setCachedAttrs:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->attrsData, a3);
    v5 = v6;
  }
}

- (int)getDeviceFD
{
  volume = self->volume;
  if (!volume)
  {
    return -1;
  }

  v3 = [(userFSVolume *)volume volumeRawDevice];
  v4 = [v3 deviceFD];

  return v4;
}

- (NSData)getAttrData
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->attrsData)
  {
    v3 = userfs_log_default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100023D14([(NSMutableData *)v2->attrsData bytes], v11);
    }
  }

  else
  {
    v10 = 0;
    v4 = [(liveFSNode *)v2 getAttribute:&v10];
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
      v5 = [(liveFSNode *)v2 lfn_seqno];
      [(liveFSNode *)v2 setLfn_seqno:v5 + 1];
      v6 = v3;
      *([v3 mutableBytes]+ 2) = v5;
      [(liveFSNode *)v2 setCachedAttrs:v3];
      v7 = userfs_log_default;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100023DCC([(NSMutableData *)v2->attrsData bytes], v11);
      }
    }
  }

  v8 = [NSData dataWithData:v2->attrsData];
  objc_sync_exit(v2);

  return v8;
}

- (int)setAttributeTo:(id)a3 withResultingAttribute:(id *)a4
{
  v6 = a3;
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
  v7 = [NSMutableData dataWithData:v6, 0];
  v8 = [v7 mutableBytes];

  *a4 = 0;
  FSOps = self->FSOps;
  if (!FSOps || !FSOps->var11)
  {
    v10 = 45;
    goto LABEL_8;
  }

  if (self->isFSCompressed && (v8[8] & 0x40) != 0)
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

  v12 = *(v8 + 1);
  if (v12)
  {
    if ((v12 & 0x20) != 0)
    {
      v18 = [v6 mutableCopy];
      v19 = [v18 mutableBytes];

      if (!v19 || (v22 = v19[11], v20 = v19 + 11, v21 = v22, -[liveFSNode getAttrData](self, "getAttrData"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 bytes], v23, !v24))
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

    v10 = (self->FSOps->var11)(self->_UVFSNode, [v6 bytes], &v29);
    if (!v10 && *(&v29 + 1))
    {
      v13 = [(liveFSNode *)self lfn_seqno];
      [(liveFSNode *)self setLfn_seqno:v13 + 1];
      *&v30 = v13;
      v14 = [NSMutableData dataWithBytes:&v29 length:184];
      if (v14)
      {
        v15 = self;
        objc_sync_enter(v15);
        objc_storeStrong(&v15->attrsData, v14);
        v16 = v14;
        *a4 = v14;
        objc_sync_exit(v15);

        v10 = 0;
      }

      else
      {
        v10 = 12;
      }

      goto LABEL_8;
    }

    v26 = self;
    objc_sync_enter(v26);
    attrsData = v26->attrsData;
    v26->attrsData = 0;

    objc_sync_exit(v26);
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
      sub_100023ED0(v6, v28, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100023FD0();
    }

    v17 = [(liveFSNode *)self getAttrData];
    *a4 = v17;
    if (v17)
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

- (int)lookup:(id)a3 withResultingNode:(id *)a4
{
  v6 = a3;
  v7 = [(userFSVolume *)self->volume lookupWithParent:self andName:v6];
  *a4 = v7;
  if (v7)
  {
LABEL_2:
    v8 = 0;
    goto LABEL_3;
  }

  v30 = 0;
  v10 = [v6 UTF8String];
  if (v10)
  {
    FSOps = self->FSOps;
    if (!FSOps || (var12 = FSOps->var12) == 0)
    {
      v8 = 45;
      goto LABEL_3;
    }

    v8 = var12(self->_UVFSNode, v10, &v30);
    if (!v8)
    {
      if ([(userFSVolume *)self->volume supportsHardLinks])
      {
        v13 = [NSMutableData dataWithLength:184];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 bytes];
          if (v15)
          {
            v16 = v15;
            if (!(self->FSOps->var10)(v30, v15))
            {
              v17 = v16[1];
              if ((v17 & 1) != 0 && (v17 & 0x100) != 0 && *(v16 + 6) != 2)
              {
                v29 = 0;
                volume = self->volume;
                v19 = [liveFSNode FileProviderFileHandleForFileID:v16[8]];
                *a4 = [(userFSVolume *)volume getNodeForFH:v19 withError:&v29];

                if (*a4)
                {
                  if (!v29)
                  {
                    v20 = userfs_log_default;
                    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
                    {
                      v25 = v16[8];
                      v26 = *a4;
                      v27 = v20;
                      v28 = [v26 UVFSNode];
                      *buf = 134218754;
                      v32 = self;
                      v33 = 2048;
                      v34 = v25;
                      v35 = 2112;
                      v36 = v6;
                      v37 = 2048;
                      v38 = v28;
                      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "LFN[%p]: inode [%llu] of file %@ already exists. using UVFSFileNode: %p", buf, 0x2Au);
                    }

                    [(userFSVolume *)self->volume insertIntoNameCache:*a4 withParent:self withName:v6];
                    v21 = *a4;
                    v22 = [*a4 lfn_seqno];
                    [v21 setLfn_seqno:v22 + 1];
                    v16[2] = v22;
                    [*a4 setCachedAttrs:v14];
                    [*a4 updateName:v6 andParent:self];
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
      v24 = [(liveFSNode *)v23 initWithVolume:self->volume andParent:self andName:v6 andUVFSNode:v30];
      *a4 = v24;
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

- (int)readSymLinkDataInto:(void *)a3 ofSize:(int)a4 withSymLinkDataSize:(unint64_t *)a5 andWithSymLinkAttrData:(id *)a6
{
  *a6 = 0;
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

  v11 = var14(UVFSNode, a3, a4, a5, v16);
  if (!v11)
  {
    v12 = [NSMutableData dataWithBytes:v16 length:184];
    if (v12)
    {
      v13 = self;
      objc_sync_enter(v13);
      objc_storeStrong(&v13->attrsData, v12);
      v14 = v12;
      *a6 = v12;
      objc_sync_exit(v13);

      v11 = 0;
    }

    else
    {
      v11 = 12;
    }
  }

  return v11;
}

- (int)readUncompressedData:(unint64_t)a3 intoDataBuffer:(id)a4 withLengthOut:(unint64_t *)a5
{
  v8 = a4;
  v19 = 0;
  v9 = [v8 length];
  *a5 = 0;
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
  if (v12 <= a3)
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100024194(&v18);
    }

    goto LABEL_18;
  }

  if (v9 + a3 > v12)
  {
    v9 = v12 - a3;
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
    a3 += v13;
    v14 = v9 >= 0x10000 ? 0x10000 : v9;
    v17[0] = [v8 mutableBytes] + *a5;
    v17[1] = v14;
    v15 = [(liveFSNode *)self fetchUncompressedData:v18 offset:a3 length:v9 vectorSize:1 vector:v17 withLengthOut:&v19];
    if (v15)
    {
      break;
    }

    v13 = v19;
    *a5 += v19;
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

  *a5 = 0;
LABEL_25:

  return v11;
}

- (int)readData:(unint64_t)a3 intoDataBuffer:(id)a4 withLengthOut:(unint64_t *)a5
{
  v8 = a4;
  v9 = v8;
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
  if (a5 && v8 && (UVFSNode = self->_UVFSNode) != 0)
  {
    if (self->isFSCompressed)
    {
      v12 = [(liveFSNode *)self readUncompressedData:a3 intoDataBuffer:v8 withLengthOut:a5];
    }

    else
    {
      v12 = (FSOps->var15)(UVFSNode, a3, [v8 length], objc_msgSend(v8, "mutableBytes"), a5);
    }

    v13 = v12;
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    v13 = 22;
  }

LABEL_16:

  return v13;
}

- (int)writeData:(unint64_t)a3 fromBuffer:(id)a4 withLengthOut:(unint64_t *)a5
{
  v8 = a4;
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

    else if (a5 && v8 && (UVFSNode = self->_UVFSNode) != 0)
    {
      v10 = (self->FSOps->var16)(UVFSNode, a3, [v8 length], objc_msgSend(v8, "bytes"), a5);
      v13 = self;
      objc_sync_enter(v13);
      attrsData = v13->attrsData;
      v13->attrsData = 0;

      objc_sync_exit(v13);
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
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

- (int)createDirEntry:(id)a3 withAttrs:(id)a4 withData:(id)a5 withResultingNode:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  *a6 = 0;
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
  v14 = [v11 mutableBytes];
  v15 = v14;
  v16 = v14[1];
  if ((v16 & 2) == 0)
  {
    v14[1] = v16 | 2;
    *(v14 + 7) |= 0x1C0u;
  }

  v17 = *(v14 + 6);
  if (v17 != 3)
  {
    if (v17 == 2)
    {
      var18 = self->FSOps->var18;
      if (var18)
      {
        UVFSNode = self->_UVFSNode;
        v23 = [v10 UTF8String];
        v22 = UVFSNode;
        v21 = v15;
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
        v20 = [v10 UTF8String];
        v21 = [v11 bytes];
        v22 = v19;
        v23 = v20;
LABEL_15:
        v25 = var18(v22, v23, v21, &v34);
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

  v25 = var19(self->_UVFSNode, [v10 UTF8String], objc_msgSend(v12, "UTF8String"), v14, &v34);
LABEL_18:
  v13 = v25;
  if (!v25)
  {
    v27 = self;
    objc_sync_enter(v27);
    attrsData = v27->attrsData;
    v27->attrsData = 0;

    objc_sync_exit(v27);
    v29 = [liveFSNode alloc];
    v30 = [(liveFSNode *)v29 initWithVolume:self->volume andParent:v27 andName:v10 andUVFSNode:v34];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
      v13 = 0;
      *a6 = v31;
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

- (int)remove:(int)a3 named:(id)a4 node:(id)a5 usingFlags:(int)a6
{
  v9 = a4;
  v10 = a5;
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

  if (a3 == 2)
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

  if (a3 != 1)
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
  v14 = [v9 UTF8String];
  if (v10)
  {
    v15 = v10[10];
  }

  else
  {
    v15 = 0;
  }

  v11 = var21(UVFSNode, v14, v15);
  if (!v11)
  {
    v17 = self;
    objc_sync_enter(v17);
    attrsData = v17->attrsData;
    v17->attrsData = 0;

    objc_sync_exit(v17);
  }

LABEL_13:

  return v11;
}

- (int)link:(id)a3 withName:(id)a4 fileAttrOut:(id *)a5 dirAttrOut:(id *)a6
{
  v10 = a3;
  v11 = a4;
  *a5 = 0;
  *a6 = 0;
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
        v13 = (self->FSOps->var25)(self->_UVFSNode, v10[10], [v11 UTF8String], objc_msgSend(v15, "mutableBytes"), objc_msgSend(v16, "mutableBytes"));
        if (v13)
        {
          v18 = v10;
          objc_sync_enter(v18);
          v19 = v18[3];
          v18[3] = 0;
        }

        else
        {
          v20 = [(liveFSNode *)self lfn_seqno];
          [(liveFSNode *)self setLfn_seqno:v20 + 1];
          *([v15 mutableBytes] + 2) = v20;
          v21 = [v10 lfn_seqno];
          [v10 setLfn_seqno:v21 + 1];
          *([v17 mutableBytes] + 2) = v21;
          v22 = v15;
          *a5 = v15;
          v23 = v17;
          *a6 = v17;
          v24 = v10;
          objc_sync_enter(v24);
          v25 = v17;
          v19 = v24[3];
          v24[3] = v25;
        }

        objc_sync_exit(v10);
        v26 = self;
        objc_sync_enter(v26);
        attrsData = v26->attrsData;
        v26->attrsData = 0;

        objc_sync_exit(v26);
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

- (int)readDirectoryEntries:(id)a3 withCookie:(unint64_t)a4 withLengthOut:(int64_t *)a5 andWithVerifier:(unint64_t *)a6
{
  v10 = a3;
  v11 = v10;
  FSOps = self->FSOps;
  if (FSOps && (var23 = FSOps->var23) != 0)
  {
    UVFSNode = self->_UVFSNode;
    if (UVFSNode)
    {
      v15 = var23(UVFSNode, [v10 mutableBytes], objc_msgSend(v10, "length"), a4, a5, a6);
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

- (int)readDirectoryEntriesWithAttrs:(id)a3 withCookie:(unint64_t)a4 withLengthOut:(int64_t *)a5 andWithVerifier:(unint64_t *)a6
{
  v10 = a3;
  v11 = v10;
  FSOps = self->FSOps;
  if (FSOps && (var24 = FSOps->var24) != 0)
  {
    UVFSNode = self->_UVFSNode;
    if (UVFSNode)
    {
      v15 = var24(UVFSNode, [v10 mutableBytes], objc_msgSend(v10, "length"), a4, a5, a6);
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

- (int)statFS:(id *)a3
{
  *a3 = 0;
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
            *a3 = v14;
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

- (int)pathConf:(id *)a3
{
  *a3 = 0;
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
          *a3 = v13;
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
    v9 = [(userFSVolume *)volume volumeRawDevice];
    v10 = [v9 deviceIsClosed];
  }

  else
  {
    v10 = 0;
  }

  result = (self->FSOps->var13)(self->_UVFSNode, v10);
  self->_UVFSNode = 0;
  return result;
}

- (int)getXAttr:(id)a3 withBuffer:(id *)a4
{
  v6 = a3;
  v7 = v6;
  *a4 = 0;
  FSOps = self->FSOps;
  if (FSOps && (var27 = FSOps->var27) != 0)
  {
    UVFSNode = self->_UVFSNode;
    if (UVFSNode)
    {
      v17 = 0;
      v11 = var27(UVFSNode, [v6 UTF8String], 0, 0, &v17);
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
            *a4 = v14;
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

- (int)listXattr:(id *)a3
{
  *a3 = &__NSArray0__struct;
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
        v13 = [v11 bytes];
        v14 = v21;
        if (v13[v21 - 1])
        {
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10002433C();
          }

          v8 = 5;
        }

        else
        {
          v16 = v13;
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
          *a3 = i;

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

- (void)createFilterAttr:(_LIFileAttributes *)a3 FromCriteria:(id)a4
{
  v5 = a4;
  *&a3->var0 = 0u;
  *&a3->var2 = 0u;
  *&a3->var5 = 0u;
  *&a3->var9 = 0u;
  *&a3->var11 = 0u;
  a3->var13 = 0u;
  a3->var14 = 0u;
  a3->var15 = 0u;
  a3->var16 = 0u;
  a3->var17 = 0u;
  a3->var18 = 0u;
  *&a3->var19 = 0;
  v16 = v5;
  v6 = [v5 objectForKeyedSubscript:LISearchObjTypeReturnAll];

  if (v6)
  {
    v7 = 7;
LABEL_7:
    v10 = v16;
LABEL_8:
    a3->var3 = v7;
    a3->var1 |= 1uLL;
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
    a3->var14.tv_sec = v13;
    [v12 timeIntervalSince1970];
    a3->var14.tv_nsec = ((v14 - a3->var14.tv_sec) * 1000000.0);
    a3->var1 |= 0x800uLL;
  }
}

- (void)createScanDirSearchRequest:(_scandir_matching_request *)a3 withFilter:(_LIFileAttributes *)a4 withCookie:(unint64_t *)a5 withCookieVerifier:(unint64_t *)a6 fromSearchCriteria:(id)a7
{
  v22 = a7;
  [(liveFSNode *)self createFilterAttr:a4 FromCriteria:v22];
  v12 = *a5;
  a3->var2 = a4;
  a3->var3 = v12;
  a3->var4 = *a6;
  v13 = [v22 objectForKeyedSubscript:LISearchFileNameContains];

  if (v13)
  {
    v14 = [v22 objectForKeyedSubscript:LISearchFileNameContains];
    a3->var0 = malloc_type_calloc(8uLL, [v14 count] + 1, 0x10040436913F5uLL);
    if ([v14 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        a3->var0[v15] = [v16 UTF8String];

        ++v15;
      }

      while ([v14 count] > v15);
    }
  }

  v17 = [v22 objectForKeyedSubscript:LISearchFileNameEndsWith];

  v18 = v22;
  if (v17)
  {
    v19 = [v22 objectForKeyedSubscript:LISearchFileNameEndsWith];
    a3->var1 = malloc_type_calloc(8uLL, [v19 count] + 1, 0x10040436913F5uLL);
    if ([v19 count])
    {
      v20 = 0;
      do
      {
        v21 = [v19 objectAtIndexedSubscript:v20];
        a3->var1[v20] = [v21 UTF8String];

        ++v20;
      }

      while ([v19 count] > v20);
    }

    v18 = v22;
  }
}

- (int)scanDirectoryForMatches:(id)a3 withScanDirCookie:(unint64_t *)a4 withScanDirCookieVerifier:(unint64_t *)a5 withSearchResultType:(int *)a6 withSearchResult:(id *)a7 withSearchResultAttr:(_LIFileAttributes *)a8
{
  v14 = a3;
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
      *a7 = 0;
      [(liveFSNode *)self createScanDirSearchRequest:v29 withFilter:v35 withCookie:a4 withCookieVerifier:a5 fromSearchCriteria:v14];
      [(liveFSNode *)self createScanDirReplyRequest:&v32];
      v16 = (self->FSOps->var30)(self->_UVFSNode, v29, &v32);
      if (!v16)
      {
        *a7 = [NSString stringWithUTF8String:v33 + *(v33 + 5)];
        v17 = v33;
        v18 = v34;
        v19 = *(v33 + 4);
        v21 = *(v33 + 1);
        v20 = *(v33 + 2);
        *&a8->var5 = *(v33 + 3);
        *&a8->var9 = v19;
        *&a8->var0 = v21;
        *&a8->var2 = v20;
        v22 = *(v17 + 8);
        v24 = *(v17 + 5);
        v23 = *(v17 + 6);
        a8->var14 = *(v17 + 7);
        a8->var15 = v22;
        *&a8->var11 = v24;
        a8->var13 = v23;
        v26 = *(v17 + 10);
        v25 = *(v17 + 11);
        v27 = *(v17 + 9);
        *&a8->var19 = *(v17 + 24);
        a8->var17 = v26;
        a8->var18 = v25;
        a8->var16 = v27;
        *a4 = *v17;
        *a5 = v18;
        *a6 = v32;
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

- (int)setFileSystemAttributes:(id)a3 toValue:(id)a4 andResult:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  FSOps = self->FSOps;
  if (FSOps && FSOps->var9)
  {
    if (self->_UVFSNode)
    {
      if (a5)
      {
        *a5 = 0;
      }

      v12 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v9 length]);
      bzero([v12 mutableBytes], objc_msgSend(v10, "length"));
      v13 = (self->FSOps->var9)(self->_UVFSNode, [v8 UTF8String], objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"), objc_msgSend(v12, "mutableBytes"), objc_msgSend(v12, "length"));
      v14 = v13;
      if (a5 && !v13)
      {
        v15 = v12;
        *a5 = v12;
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