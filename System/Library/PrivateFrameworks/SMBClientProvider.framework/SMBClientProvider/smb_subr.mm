@interface smb_subr
+ (id)encodePath:(id)path;
+ (id)makeWindowsPath:(id)path withName:(id)name;
+ (int)sendLogoff:(id)logoff Param:(smb_login_out *)param;
+ (int)sendNegotiate:(id)negotiate Server:(id)server netBIOSName:(id)name VPNCookie:(id)cookie Result:(smb_negotiate *)result;
+ (int)sendSessionSetup:(id)setup User:(id)user Password:(id)password Realm:(id)realm Param:(smb_login_out *)param;
+ (int)sendTreeConnect:(id)connect ShareName:(id)name Param:(smb_tree_connect_disc *)param;
+ (void)checkForWindowsSymlink:(id)symlink CompletionHandler:(id)handler;
+ (void)createFile:(id)file NewName:(id)name FileType:(int)type RetAttr:(smbfattr *)attr CompletionHandler:(id)handler;
+ (void)createReparseSymlink:(id)symlink NewName:(id)name Target:(id)target RetAttr:(smbfattr *)attr CompletionHandler:(id)handler;
+ (void)createWindowsSymlink:(id)symlink NewName:(id)name Target:(id)target RetAttr:(smbfattr *)attr CompletionHandler:(id)handler;
+ (void)deleteNameInParent:(id)parent DeleteName:(id)name FileType:(int)type CompletionHandler:(id)handler;
+ (void)deleteNodeStream:(id)stream StreamName:(id)name CompletionHandler:(id)handler;
+ (void)enumDirClose:(id)close CompletionHandler:(id)handler;
+ (void)enumDirNext:(id)next DirEnt:(id)ent CompletionHandler:(id)handler;
+ (void)enumDirOpen:(id)open SearchPattern:(id)pattern IsWildcard:(BOOL)wildcard CompletionHandler:(id)handler;
+ (void)listNodeStreams:(id)streams CompletionHandler:(id)handler;
+ (void)openFileInParent:(id)parent withName:(id)name withStream:(id)stream withArgs:(openFileArgs *)args CompletionHandler:(id)handler;
+ (void)openFileNode:(id)node withStream:(id)stream withArgs:(openFileArgs *)args CompletionHandler:(id)handler;
+ (void)queryMaxAccess:(id)access CompletionHandler:(id)handler;
+ (void)queryNameInParent:(id)parent QueryName:(id)name FAttrs:(smbfattr *)attrs CompletionHandler:(id)handler;
+ (void)queryNode:(id)node attrs:(smbfattr *)attrs CompletionHandler:(id)handler;
+ (void)queryNodeStream:(id)stream StreamName:(id)name CompletionHandler:(id)handler;
+ (void)readNodeStreamChunk:(id)chunk FileNode:(id)node ReadBuffer:(id)buffer MaxReadXferLen:(unsigned int)len StreamOffset:(unsigned int)offset rdparamPtr:(smb_read_write *)ptr result:(int)result bytesRead:(unint64_t)self0 bytesRemain:(unint64_t)self1 pass:(unint64_t)self2 reply:(id)self3;
+ (void)readNodeStreamChunks:(id)chunks StreamName:(id)name ReadBuffer:(id)buffer MaxReadXferLen:(unsigned int)len CompletionHandler:(id)handler;
+ (void)readNodeStreamCompound:(id)compound StreamName:(id)name ReadBuffer:(id)buffer CompletionHandler:(id)handler;
+ (void)readReparseSymlink:(id)symlink completionHandler:(id)handler;
+ (void)readSymlink:(id)symlink completionHandler:(id)handler;
+ (void)readWindowsSymlink:(id)symlink completionHandler:(id)handler;
+ (void)renameFile:(id)file FileName:(id)name NewParent:(id)parent NewName:(id)newName VType:(int)type CompletionHandler:(id)handler;
+ (void)sendChangeNotify:(id)notify Param:(changeNotifyArgs *)param CompletionHandler:(id)handler NotifyHandler:(id)notifyHandler;
+ (void)sendPipeTransceive:(id)transceive InData:(id)data OutData:(id)outData CompletionHandler:(id)handler;
+ (void)sendRead:(id)read Param:(smb_read_write *)param ReadBuf:(id)buf CompletionHandler:(id)handler;
+ (void)sendSetInfo:(id)info Param:(smb_setinfo *)param InputBuffer:(id)buffer RenameTarget:(id)target CompletionHandler:(id)handler;
+ (void)sendWrite:(id)write Param:(smb_read_write *)param WriteBuf:(id)buf CompletionHandler:(id)handler;
+ (void)setChangeNotify:(id)notify Param:(changeNotifyArgs *)param CompletionHandler:(id)handler NotifyHandler:(id)notifyHandler;
+ (void)setNodeBasicInfo:(id)info BasicInfo:(smb2_file_basic_info *)basicInfo FileType:(int)type CompletionHandler:(id)handler;
+ (void)setNodeEOF:(id)f Eof:(unint64_t)eof FileType:(int)type CompletionHandler:(id)handler;
+ (void)writeNodeStreamChunk:(id)chunk FileNode:(id)node WriteBuffer:(id)buffer MaxWriteXferLen:(unsigned int)len StreamOffset:(unsigned int)offset wrparamPtr:(smb_read_write *)ptr result:(int)result bytesWritten:(unint64_t)self0 bytesRemain:(unint64_t)self1 pass:(unint64_t)self2 reply:(id)self3;
+ (void)writeNodeStreamChunks:(id)chunks StreamName:(id)name How:(int)how MaxWriteXferLen:(unsigned int)len WriteBuffer:(id)buffer CompletionHandler:(id)handler;
+ (void)writeNodeStreamCompound:(id)compound StreamName:(id)name How:(int)how WriteBuffer:(id)buffer CompletionHandler:(id)handler;
@end

@implementation smb_subr

+ (int)sendNegotiate:(id)negotiate Server:(id)server netBIOSName:(id)name VPNCookie:(id)cookie Result:(smb_negotiate *)result
{
  negotiateCopy = negotiate;
  serverCopy = server;
  nameCopy = name;
  cookieCopy = cookie;
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x2020000000;
  v28 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100036A88;
  v24 = sub_100036A98;
  v25 = 0;
  v15 = dispatch_group_create();
  v16 = v21[5];
  v21[5] = v15;

  dispatch_group_enter(v21[5]);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100036AA0;
  v19[3] = &unk_10008E2D8;
  v19[4] = &v26;
  v19[5] = &v20;
  [negotiateCopy negotiateTo:serverCopy netBIOSname:nameCopy withVPNCookie:cookieCopy outParameters:result callBack:v19];
  dispatch_group_wait(v21[5], 0xFFFFFFFFFFFFFFFFLL);
  if (*(v27[0] + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005A250(v27);
    }

    v17 = *(v27[0] + 24);
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v17;
}

+ (int)sendSessionSetup:(id)setup User:(id)user Password:(id)password Realm:(id)realm Param:(smb_login_out *)param
{
  setupCopy = setup;
  userCopy = user;
  passwordCopy = password;
  realmCopy = realm;
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x2020000000;
  v28 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100036A88;
  v24 = sub_100036A98;
  v25 = 0;
  v15 = dispatch_group_create();
  v16 = v21[5];
  v21[5] = v15;

  dispatch_group_enter(v21[5]);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100036CA8;
  v19[3] = &unk_10008E2D8;
  v19[4] = &v26;
  v19[5] = &v20;
  [setupCopy login:param asUser:userCopy withPassword:passwordCopy inRealm:realmCopy callBack:v19];
  dispatch_group_wait(v21[5], 0xFFFFFFFFFFFFFFFFLL);
  if (*(v27[0] + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005A2CC(v27);
    }

    v17 = *(v27[0] + 24);
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v17;
}

+ (int)sendLogoff:(id)logoff Param:(smb_login_out *)param
{
  logoffCopy = logoff;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x2020000000;
  v19 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100036A88;
  v15 = sub_100036A98;
  v16 = 0;
  v6 = dispatch_group_create();
  v7 = v12[5];
  v12[5] = v6;

  dispatch_group_enter(v12[5]);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100036E64;
  v10[3] = &unk_10008E2D8;
  v10[4] = &v17;
  v10[5] = &v11;
  [logoffCopy logoff:param callBack:v10];
  dispatch_group_wait(v12[5], 0xFFFFFFFFFFFFFFFFLL);
  if (*(v18[0] + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005A34C(v18);
    }

    v8 = *(v18[0] + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

+ (int)sendTreeConnect:(id)connect ShareName:(id)name Param:(smb_tree_connect_disc *)param
{
  connectCopy = connect;
  nameCopy = name;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x2020000000;
  v22 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100036A88;
  v18 = sub_100036A98;
  v19 = 0;
  v9 = dispatch_group_create();
  v10 = v15[5];
  v15[5] = v9;

  dispatch_group_enter(v15[5]);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003703C;
  v13[3] = &unk_10008E2D8;
  v13[4] = &v20;
  v13[5] = &v14;
  [connectCopy treeConnect:param toShare:nameCopy callBack:v13];
  dispatch_group_wait(v15[5], 0xFFFFFFFFFFFFFFFFLL);
  if (*(v21[0] + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005A3CC(v21);
    }

    v11 = *(v21[0] + 24);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v11;
}

+ (void)sendWrite:(id)write Param:(smb_read_write *)param WriteBuf:(id)buf CompletionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100037670;
  v10[3] = &unk_10008E328;
  handlerCopy = handler;
  paramCopy = param;
  v9 = handlerCopy;
  [write write:param fromBuffer:buf callBack:v10];
}

+ (void)sendRead:(id)read Param:(smb_read_write *)param ReadBuf:(id)buf CompletionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003777C;
  v10[3] = &unk_10008E328;
  handlerCopy = handler;
  paramCopy = param;
  v9 = handlerCopy;
  [read read:param intoBuffer:buf callBack:v10];
}

+ (void)sendPipeTransceive:(id)transceive InData:(id)data OutData:(id)outData CompletionHandler:(id)handler
{
  handlerCopy = handler;
  outDataCopy = outData;
  dataCopy = data;
  transceiveCopy = transceive;
  v13 = malloc_type_malloc(0x60uLL, 0x1000040718B784FuLL);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  *(v13 + 1) = 1163287;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100037A78;
  v15[3] = &unk_10008E328;
  v16 = handlerCopy;
  v17 = v13;
  v14 = handlerCopy;
  [transceiveCopy ioctl:v13 pipeTransceive:dataCopy withRecvData:outDataCopy callBack:v15];
}

+ (void)sendSetInfo:(id)info Param:(smb_setinfo *)param InputBuffer:(id)buffer RenameTarget:(id)target CompletionHandler:(id)handler
{
  handlerCopy = handler;
  targetCopy = target;
  bufferCopy = buffer;
  infoCopy = info;
  param->var0 = [infoCopy shareID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100037BEC;
  v16[3] = &unk_10008E328;
  v17 = handlerCopy;
  paramCopy = param;
  v15 = handlerCopy;
  [infoCopy setInformation:param withInputBuffer:bufferCopy withRenameTarget:targetCopy callBack:v16];
}

+ (void)sendChangeNotify:(id)notify Param:(changeNotifyArgs *)param CompletionHandler:(id)handler NotifyHandler:(id)notifyHandler
{
  notifyCopy = notify;
  handlerCopy = handler;
  notifyHandlerCopy = notifyHandler;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100036A88;
  v27 = sub_100036A98;
  v28 = 0;
  v12 = [[NSMutableData alloc] initWithCapacity:0x10000];
  v13 = v24[5];
  v24[5] = v12;

  v14 = v24[5];
  if (v14)
  {
    [v14 setLength:0x10000];
    param->pending = 1;
    flags = param->flags;
    filter = param->filter;
    v17 = v24[5];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100037E44;
    v18[3] = &unk_10008E370;
    v21 = &v23;
    paramCopy = param;
    v19 = notifyCopy;
    v20 = notifyHandlerCopy;
    [v19 changeNotify:param withFlags:flags withFilter:filter returnDataIn:v17 callBack:v18];
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005A7AC();
    }

    handlerCopy[2](handlerCopy, 12);
  }

  _Block_object_dispose(&v23, 8);
}

+ (void)queryNameInParent:(id)parent QueryName:(id)name FAttrs:(smbfattr *)attrs CompletionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  parentCopy = parent;
  v12 = [parentCopy mp];
  v13 = [v12 pd];
  v14 = [parentCopy mp];
  shareID = [v14 shareID];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100039B74;
  v17[3] = &unk_10008CA10;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [smb_subr queryDirOneAttr:v13 ShareID:shareID DirNode:parentCopy withName:nameCopy FAttrs:attrs CompletionHandler:v17];
}

+ (void)openFileNode:(id)node withStream:(id)stream withArgs:(openFileArgs *)args CompletionHandler:(id)handler
{
  nodeCopy = node;
  streamCopy = stream;
  handlerCopy = handler;
  if ([nodeCopy isRoot])
  {
    v11 = 0;
    goto LABEL_4;
  }

  v11 = [smb_subr makeWindowsPath:nodeCopy withName:0];
  if (v11)
  {
LABEL_4:
    v12 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    v13 = v12;
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
    *(v12 + 30) = 0;
    *v12 = 0u;
    v12[1] = 0u;
    var0 = args->var0;
    var1 = args->var1;
    *(v12 + 3) = 2;
    *(v12 + 4) = var1;
    var3 = args->var3;
    *(v12 + 6) = args->var2;
    *(v12 + 7) = var0;
    if (var3 == 2)
    {
      *(v12 + 5) = 16;
      v17 = 1;
    }

    else
    {
      *(v12 + 5) = 128;
      if (var3 != 5)
      {
LABEL_9:
        if (streamCopy)
        {
          *v12 = 2;
        }

        v18 = [nodeCopy mp];
        v19 = [v18 pd];
        v20 = [nodeCopy mp];
        shareID = [v20 shareID];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100039DC4;
        v24[3] = &unk_10008E460;
        v26 = v13;
        argsCopy = args;
        v22 = handlerCopy;
        v25 = handlerCopy;
        [smb_subr sendCreateFile:v19 ShareID:shareID FileName:v11 StreamName:streamCopy Param:v13 CompletionHandler:v24];

        goto LABEL_12;
      }

      v17 = 0x200000;
    }

    *(v12 + 8) = v17;
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005B680(nodeCopy);
  }

  v22 = handlerCopy;
  (*(handlerCopy + 2))(handlerCopy, 22, 0);
LABEL_12:
}

+ (void)openFileInParent:(id)parent withName:(id)name withStream:(id)stream withArgs:(openFileArgs *)args CompletionHandler:(id)handler
{
  parentCopy = parent;
  streamCopy = stream;
  handlerCopy = handler;
  v14 = [smb_subr makeWindowsPath:parentCopy withName:name];
  if (v14)
  {
    v15 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    v16 = v15;
    v15[2] = 0u;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[5] = 0u;
    v15[6] = 0u;
    v15[7] = 0u;
    v15[8] = 0u;
    v15[9] = 0u;
    v15[10] = 0u;
    v15[11] = 0u;
    v15[12] = 0u;
    v15[13] = 0u;
    v15[14] = 0u;
    *(v15 + 30) = 0;
    *v15 = 0u;
    v15[1] = 0u;
    var0 = args->var0;
    var1 = args->var1;
    *(v15 + 3) = 2;
    *(v15 + 4) = var1;
    *(v15 + 7) = var0;
    var2 = args->var2;
    var3 = args->var3;
    *(v15 + 5) = 128;
    *(v15 + 6) = var2;
    if (var3 == 5)
    {
      v21 = 0x200000;
    }

    else
    {
      if (var3 != 2)
      {
LABEL_10:
        if (streamCopy)
        {
          *v15 = 2;
        }

        v22 = [parentCopy mp];
        v23 = [v22 pd];
        v24 = [parentCopy mp];
        shareID = [v24 shareID];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10003A07C;
        v27[3] = &unk_10008E460;
        v29 = v16;
        argsCopy = args;
        v28 = handlerCopy;
        streamCopy = v26;
        [smb_subr sendCreateFile:v23 ShareID:shareID FileName:v14 StreamName:v26 Param:v16 CompletionHandler:v27];

        goto LABEL_13;
      }

      *(v15 + 5) = 16;
      v21 = 1;
    }

    *(v15 + 8) = v21;
    goto LABEL_10;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005B794(parentCopy);
  }

  (*(handlerCopy + 2))(handlerCopy, 22, 0);
LABEL_13:
}

+ (void)createFile:(id)file NewName:(id)name FileType:(int)type RetAttr:(smbfattr *)attr CompletionHandler:(id)handler
{
  fileCopy = file;
  nameCopy = name;
  handlerCopy = handler;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  if ((type - 3) <= 0xFFFFFFFD)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B8EC();
    }

LABEL_9:
    handlerCopy[2](handlerCopy, 22);
    goto LABEL_10;
  }

  v14 = [smb_subr makeWindowsPath:fileCopy withName:nameCopy];
  if (!v14)
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [fileCopy name];
      objc_claimAutoreleasedReturnValue();
      sub_10005B8A0();
    }

    goto LABEL_9;
  }

  v15 = [fileCopy mp];
  v16 = [v15 pd];
  v17 = [fileCopy mp];
  shareID = [v17 shareID];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003A38C;
  v21[3] = &unk_10008E4D8;
  typeCopy = type;
  v25 = handlerCopy;
  v26 = v29;
  v19 = v14;
  v22 = v19;
  v23 = fileCopy;
  v24 = nameCopy;
  attrCopy = attr;
  [SMBNode nodeForCmpd:v16 onShareID:shareID callBack:v21];

LABEL_10:
  _Block_object_dispose(v29, 8);
}

+ (void)queryNode:(id)node attrs:(smbfattr *)attrs CompletionHandler:(id)handler
{
  nodeCopy = node;
  handlerCopy = handler;
  if ([nodeCopy isRoot])
  {
    v9 = [nodeCopy mp];
    v10 = [v9 pd];
    v11 = [nodeCopy mp];
    shareID = [v11 shareID];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10003ADC4;
    v24[3] = &unk_10008E328;
    attrsCopy = attrs;
    v25 = handlerCopy;
    [smb_subr queryShareRoot:v10 ShareID:shareID FAttrs:attrs CompletionHandler:v24];
  }

  else
  {
    parent = [nodeCopy parent];

    if (parent)
    {
      v14 = [nodeCopy mp];
      v15 = [v14 pd];
      v16 = [nodeCopy mp];
      shareID2 = [v16 shareID];
      parent2 = [nodeCopy parent];
      name = [nodeCopy name];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10003AE38;
      v20[3] = &unk_10008E148;
      v21 = nodeCopy;
      attrsCopy2 = attrs;
      v22 = handlerCopy;
      [smb_subr queryDirOneAttr:v15 ShareID:shareID2 DirNode:parent2 withName:name FAttrs:attrs CompletionHandler:v20];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005BDE0(nodeCopy);
      }

      (*(handlerCopy + 2))(handlerCopy, 22);
    }
  }
}

+ (void)createReparseSymlink:(id)symlink NewName:(id)name Target:(id)target RetAttr:(smbfattr *)attr CompletionHandler:(id)handler
{
  symlinkCopy = symlink;
  nameCopy = name;
  targetCopy = target;
  handlerCopy = handler;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  if (!targetCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C0A4();
    }

    goto LABEL_9;
  }

  if (![targetCopy length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C060();
    }

LABEL_9:
    handlerCopy[2](handlerCopy, 22);
    goto LABEL_14;
  }

  v15 = [smb_subr makeWindowsPath:symlinkCopy withName:nameCopy];
  if (v15)
  {
    v16 = [symlinkCopy mp];
    v17 = [v16 pd];
    v18 = [symlinkCopy mp];
    shareID = [v18 shareID];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10003B314;
    v25[3] = &unk_10008E578;
    v30 = handlerCopy;
    v31 = v33;
    v26 = v15;
    v27 = targetCopy;
    v28 = symlinkCopy;
    v29 = nameCopy;
    attrCopy = attr;
    [SMBNode nodeForCmpd:v17 onShareID:shareID callBack:v25];
  }

  else
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      name = [symlinkCopy name];
      v22 = name;
      uTF8String = [name UTF8String];
      v24 = nameCopy;
      sub_10005C010(uTF8String, [nameCopy UTF8String], v35, name);
    }

    handlerCopy[2](handlerCopy, 22);
  }

LABEL_14:
  _Block_object_dispose(v33, 8);
}

+ (void)createWindowsSymlink:(id)symlink NewName:(id)name Target:(id)target RetAttr:(smbfattr *)attr CompletionHandler:(id)handler
{
  symlinkCopy = symlink;
  nameCopy = name;
  targetCopy = target;
  handlerCopy = handler;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v30 = 0;
  v14 = sub_100033104(targetCopy, &v30);
  if (!v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005C834(&v30);
    }

    v21 = v30;
    goto LABEL_10;
  }

  v15 = [smb_subr makeWindowsPath:symlinkCopy withName:nameCopy];
  if (!v15)
  {
    v22 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [symlinkCopy name];
      objc_claimAutoreleasedReturnValue();
      sub_10005C7E8();
    }

    free(v14);
    v21 = 22;
LABEL_10:
    handlerCopy[2](handlerCopy, v21);
    goto LABEL_11;
  }

  v16 = [symlinkCopy mp];
  v17 = [v16 pd];
  v18 = [symlinkCopy mp];
  shareID = [v18 shareID];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10003C180;
  v24[3] = &unk_10008E5A0;
  v26 = handlerCopy;
  v27 = v31;
  v20 = v15;
  v25 = v20;
  v28 = v14;
  attrCopy = attr;
  [SMBNode nodeForCmpd:v17 onShareID:shareID callBack:v24];

LABEL_11:
  _Block_object_dispose(v31, 8);
}

+ (void)readSymlink:(id)symlink completionHandler:(id)handler
{
  symlinkCopy = symlink;
  handlerCopy = handler;
  if ([symlinkCopy np_flag])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003CA08;
    v10[3] = &unk_10008E5C8;
    v11 = handlerCopy;
    [smb_subr readWindowsSymlink:symlinkCopy completionHandler:v10];
    v7 = v11;
LABEL_8:

    goto LABEL_9;
  }

  if (([symlinkCopy np_flag] & 2) != 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003CA18;
    v8[3] = &unk_10008E5C8;
    v9 = handlerCopy;
    [smb_subr readReparseSymlink:symlinkCopy completionHandler:v8];
    v7 = v9;
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005CCC4(symlinkCopy);
  }

  (*(handlerCopy + 2))(handlerCopy, 22, 0);
LABEL_9:
}

+ (void)readReparseSymlink:(id)symlink completionHandler:(id)handler
{
  symlinkCopy = symlink;
  handlerCopy = handler;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v7 = objc_alloc_init(NSMutableString);
  if (!v7)
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [symlinkCopy name];
      objc_claimAutoreleasedReturnValue();
      sub_10005CDBC();
    }

    v10 = 12;
    goto LABEL_12;
  }

  if (([symlinkCopy isRoot] & 1) == 0)
  {
    v8 = [smb_subr makeWindowsPath:symlinkCopy withName:0];
    if (v8)
    {
      goto LABEL_8;
    }

    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      name = [symlinkCopy name];
      v18 = name;
      [name UTF8String];
      sub_10005CD70();
    }

    v10 = 22;
LABEL_12:

    handlerCopy[2](handlerCopy, v10, 0);
    goto LABEL_13;
  }

  v8 = 0;
LABEL_8:
  v11 = [symlinkCopy mp];
  v12 = [v11 pd];
  v13 = [symlinkCopy mp];
  shareID = [v13 shareID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003CCD0;
  v19[3] = &unk_10008E618;
  v22 = handlerCopy;
  v23 = v24;
  v15 = v8;
  v20 = v15;
  v21 = v7;
  [SMBNode nodeForCmpd:v12 onShareID:shareID callBack:v19];

LABEL_13:
  _Block_object_dispose(v24, 8);
}

+ (void)readWindowsSymlink:(id)symlink completionHandler:(id)handler
{
  symlinkCopy = symlink;
  handlerCopy = handler;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v7 = [[NSMutableData alloc] initWithCapacity:1067];
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D220();
    }

    v9 = 12;
    goto LABEL_12;
  }

  if (([symlinkCopy isRoot] & 1) == 0)
  {
    v8 = [smb_subr makeWindowsPath:symlinkCopy withName:0];
    if (v8)
    {
      goto LABEL_8;
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      name = [symlinkCopy name];
      v17 = name;
      [name UTF8String];
      sub_10005D1D4();
    }

    v9 = 22;
LABEL_12:
    handlerCopy[2](handlerCopy, v9, 0);
    goto LABEL_13;
  }

  v8 = 0;
LABEL_8:
  v10 = [symlinkCopy mp];
  v11 = [v10 pd];
  v12 = [symlinkCopy mp];
  shareID = [v12 shareID];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003D448;
  v18[3] = &unk_10008E618;
  v21 = handlerCopy;
  v22 = v23;
  v14 = v8;
  v19 = v14;
  v20 = v7;
  [SMBNode nodeForCmpd:v11 onShareID:shareID callBack:v18];

LABEL_13:
  _Block_object_dispose(v23, 8);
}

+ (void)checkForWindowsSymlink:(id)symlink CompletionHandler:(id)handler
{
  symlinkCopy = symlink;
  handlerCopy = handler;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v7 = [[NSMutableData alloc] initWithCapacity:1067];
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D770();
    }

    v9 = 12;
    goto LABEL_12;
  }

  if (([symlinkCopy isRoot] & 1) == 0)
  {
    v8 = [smb_subr makeWindowsPath:symlinkCopy withName:0];
    if (v8)
    {
      goto LABEL_8;
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      name = [symlinkCopy name];
      v17 = name;
      [name UTF8String];
      sub_10005D724();
    }

    v9 = 22;
LABEL_12:
    (*(handlerCopy + 2))(handlerCopy, v9, 0, 0);
    goto LABEL_13;
  }

  v8 = 0;
LABEL_8:
  v10 = [symlinkCopy mp];
  v11 = [v10 pd];
  v12 = [symlinkCopy mp];
  shareID = [v12 shareID];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003DCB4;
  v18[3] = &unk_10008E618;
  v21 = handlerCopy;
  v22 = v23;
  v14 = v8;
  v19 = v14;
  v20 = v7;
  [SMBNode nodeForCmpd:v11 onShareID:shareID callBack:v18];

LABEL_13:
  _Block_object_dispose(v23, 8);
}

+ (void)listNodeStreams:(id)streams CompletionHandler:(id)handler
{
  streamsCopy = streams;
  handlerCopy = handler;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v7 = objc_alloc_init(NSMutableData);
  if (!v7)
  {
    v9 = 12;
    goto LABEL_10;
  }

  if (([streamsCopy isRoot] & 1) == 0)
  {
    v8 = [smb_subr makeWindowsPath:streamsCopy withName:0];
    if (v8)
    {
      goto LABEL_6;
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      name = [streamsCopy name];
      v17 = name;
      [name UTF8String];
      sub_10005DBFC();
    }

    v9 = 22;
LABEL_10:
    handlerCopy[2](handlerCopy, v9, 0);
    goto LABEL_11;
  }

  v8 = 0;
LABEL_6:
  v10 = [streamsCopy mp];
  v11 = [v10 pd];
  v12 = [streamsCopy mp];
  shareID = [v12 shareID];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003E4B4;
  v18[3] = &unk_10008E640;
  v22 = handlerCopy;
  v19 = streamsCopy;
  v23 = v24;
  v14 = v8;
  v20 = v14;
  v21 = v7;
  [SMBNode nodeForCmpd:v11 onShareID:shareID callBack:v18];

LABEL_11:
  _Block_object_dispose(v24, 8);
}

+ (void)queryNodeStream:(id)stream StreamName:(id)name CompletionHandler:(id)handler
{
  streamCopy = stream;
  nameCopy = name;
  handlerCopy = handler;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  if ([streamCopy isRoot])
  {
    v10 = 0;
LABEL_4:
    v11 = [streamCopy mp];
    v12 = [v11 pd];
    v13 = [streamCopy mp];
    shareID = [v13 shareID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003ECD0;
    v19[3] = &unk_10008E690;
    v23 = handlerCopy;
    v20 = streamCopy;
    v24 = v30;
    v15 = v10;
    v21 = v15;
    v22 = nameCopy;
    v25 = v29;
    v26 = v27;
    [SMBNode nodeForCmpd:v12 onShareID:shareID callBack:v19];

    goto LABEL_5;
  }

  v10 = [smb_subr makeWindowsPath:streamCopy withName:0];
  if (v10)
  {
    goto LABEL_4;
  }

  v16 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    name = [streamCopy name];
    v18 = name;
    [name UTF8String];
    sub_10005E014();
  }

  (*(handlerCopy + 2))(handlerCopy, 22, 0, 0);
LABEL_5:
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
}

+ (void)readNodeStreamChunks:(id)chunks StreamName:(id)name ReadBuffer:(id)buffer MaxReadXferLen:(unsigned int)len CompletionHandler:(id)handler
{
  chunksCopy = chunks;
  nameCopy = name;
  bufferCopy = buffer;
  handlerCopy = handler;
  if ([chunksCopy isRoot])
  {
    v15 = 0;
LABEL_4:
    v21 = v15;
    v16 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *v16 = 0u;
    v16[1] = 0u;
    v16[2] = 0u;
    v16[3] = 0u;
    v16[4] = 0u;
    v16[5] = 0u;
    v16[6] = 0u;
    v16[7] = 0u;
    v16[8] = 0u;
    v16[9] = 0u;
    v16[10] = 0u;
    v16[11] = 0u;
    v16[12] = 0u;
    v16[13] = 0u;
    v16[14] = 0u;
    *(v16 + 30) = 0;
    *(v16 + 12) = xmmword_10006D5E0;
    *(v16 + 7) = 1;
    if (*([chunksCopy getSmbFattr] + 30) == 5)
    {
      *(v16 + 8) |= 0x200000u;
    }

    v17 = [chunksCopy mp];
    v18 = [v17 pd];
    v19 = [chunksCopy mp];
    shareID = [v19 shareID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10003F6A8;
    v22[3] = &unk_10008E730;
    v23 = chunksCopy;
    v24 = nameCopy;
    v27 = v16;
    v26 = handlerCopy;
    v25 = bufferCopy;
    lenCopy = len;
    [smb_subr sendCreateFile:v18 ShareID:shareID FileName:v21 StreamName:v24 Param:v16 CompletionHandler:v22];

    goto LABEL_7;
  }

  v15 = [smb_subr makeWindowsPath:chunksCopy withName:0];
  if (v15)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005E42C(chunksCopy);
  }

  (*(handlerCopy + 2))(handlerCopy, 22, 0);
LABEL_7:
}

+ (void)readNodeStreamChunk:(id)chunk FileNode:(id)node ReadBuffer:(id)buffer MaxReadXferLen:(unsigned int)len StreamOffset:(unsigned int)offset rdparamPtr:(smb_read_write *)ptr result:(int)result bytesRead:(unint64_t)self0 bytesRemain:(unint64_t)self1 pass:(unint64_t)self2 reply:(id)self3
{
  chunkCopy = chunk;
  nodeCopy = node;
  bufferCopy = buffer;
  replyCopy = reply;
  xattrIOQueue = [chunkCopy xattrIOQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FE08;
  block[3] = &unk_10008E780;
  lenCopy = len;
  offsetCopy = offset;
  readCopy = read;
  remainCopy = remain;
  resultCopy = result;
  v29 = chunkCopy;
  v30 = bufferCopy;
  v31 = nodeCopy;
  v32 = replyCopy;
  ptrCopy = ptr;
  passCopy = pass;
  selfCopy = self;
  v22 = nodeCopy;
  v23 = bufferCopy;
  v24 = replyCopy;
  v25 = chunkCopy;
  dispatch_async(xattrIOQueue, block);
}

+ (void)readNodeStreamCompound:(id)compound StreamName:(id)name ReadBuffer:(id)buffer CompletionHandler:(id)handler
{
  compoundCopy = compound;
  nameCopy = name;
  bufferCopy = buffer;
  handlerCopy = handler;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  if ([compoundCopy isRoot])
  {
    v13 = 0;
LABEL_4:
    v14 = [compoundCopy mp];
    v15 = [v14 pd];
    v16 = [compoundCopy mp];
    shareID = [v16 shareID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004031C;
    v22[3] = &unk_10008E7A8;
    v27 = handlerCopy;
    v23 = compoundCopy;
    v28 = v29;
    v18 = v13;
    v24 = v18;
    v25 = nameCopy;
    v26 = bufferCopy;
    [SMBNode nodeForCmpd:v15 onShareID:shareID callBack:v22];

    goto LABEL_5;
  }

  v13 = [smb_subr makeWindowsPath:compoundCopy withName:0];
  if (v13)
  {
    goto LABEL_4;
  }

  v19 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    name = [compoundCopy name];
    v21 = name;
    [name UTF8String];
    sub_10005E74C();
  }

  (*(handlerCopy + 2))(handlerCopy, 22, 0);
LABEL_5:
  _Block_object_dispose(v29, 8);
}

+ (void)writeNodeStreamChunks:(id)chunks StreamName:(id)name How:(int)how MaxWriteXferLen:(unsigned int)len WriteBuffer:(id)buffer CompletionHandler:(id)handler
{
  chunksCopy = chunks;
  nameCopy = name;
  bufferCopy = buffer;
  handlerCopy = handler;
  if ([chunksCopy isRoot])
  {
    v18 = 0;
LABEL_4:
    v19 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *v19 = 0u;
    *(v19 + 1) = 0u;
    *(v19 + 2) = 0u;
    *(v19 + 3) = 0u;
    *(v19 + 4) = 0u;
    *(v19 + 5) = 0u;
    *(v19 + 6) = 0u;
    *(v19 + 7) = 0u;
    *(v19 + 8) = 0u;
    *(v19 + 9) = 0u;
    *(v19 + 10) = 0u;
    *(v19 + 11) = 0u;
    *(v19 + 12) = 0u;
    *(v19 + 13) = 0u;
    *(v19 + 14) = 0u;
    *(v19 + 30) = 0;
    *(v19 + 12) = 0x200000002;
    *(v19 + 5) = 128;
    if (*([chunksCopy getSmbFattr] + 30) == 5)
    {
      *(v19 + 8) |= 0x200000u;
    }

    if (how >= 3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005EC94();
      }

      handlerCopy[2](handlerCopy, 22);
    }

    else
    {
      selfCopy = self;
      *(v19 + 7) = dword_10006D600[how];
      if (*([chunksCopy getSmbFattr] + 30) == 5)
      {
        *(v19 + 8) |= 0x200000u;
      }

      v20 = [chunksCopy mp];
      v21 = [v20 pd];
      v22 = [chunksCopy mp];
      shareID = [v22 shareID];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100040D48;
      v25[3] = &unk_10008E820;
      v26 = chunksCopy;
      v27 = nameCopy;
      v30 = v19;
      v29 = handlerCopy;
      v31 = selfCopy;
      v28 = bufferCopy;
      lenCopy = len;
      [smb_subr sendCreateFile:v21 ShareID:shareID FileName:v18 StreamName:v27 Param:v19 CompletionHandler:v25];
    }

    goto LABEL_14;
  }

  v18 = [smb_subr makeWindowsPath:chunksCopy withName:0];
  if (v18)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005EBFC(chunksCopy);
  }

  handlerCopy[2](handlerCopy, 22);
LABEL_14:
}

+ (void)writeNodeStreamChunk:(id)chunk FileNode:(id)node WriteBuffer:(id)buffer MaxWriteXferLen:(unsigned int)len StreamOffset:(unsigned int)offset wrparamPtr:(smb_read_write *)ptr result:(int)result bytesWritten:(unint64_t)self0 bytesRemain:(unint64_t)self1 pass:(unint64_t)self2 reply:(id)self3
{
  chunkCopy = chunk;
  nodeCopy = node;
  bufferCopy = buffer;
  replyCopy = reply;
  xattrIOQueue = [chunkCopy xattrIOQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000413A4;
  block[3] = &unk_10008E780;
  lenCopy = len;
  offsetCopy = offset;
  writtenCopy = written;
  remainCopy = remain;
  resultCopy = result;
  v29 = chunkCopy;
  v30 = bufferCopy;
  v31 = nodeCopy;
  v32 = replyCopy;
  ptrCopy = ptr;
  passCopy = pass;
  selfCopy = self;
  v22 = nodeCopy;
  v23 = bufferCopy;
  v24 = replyCopy;
  v25 = chunkCopy;
  dispatch_async(xattrIOQueue, block);
}

+ (void)writeNodeStreamCompound:(id)compound StreamName:(id)name How:(int)how WriteBuffer:(id)buffer CompletionHandler:(id)handler
{
  compoundCopy = compound;
  nameCopy = name;
  bufferCopy = buffer;
  handlerCopy = handler;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  if ([compoundCopy isRoot])
  {
    nameCopy = 0;
LABEL_4:
    v15 = [compoundCopy mp];
    v16 = [v15 pd];
    v17 = [compoundCopy mp];
    shareID = [v17 shareID];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000418EC;
    v24[3] = &unk_10008E870;
    v29 = handlerCopy;
    howCopy = how;
    v25 = compoundCopy;
    v30 = v32;
    v19 = nameCopy;
    v26 = v19;
    v27 = nameCopy;
    v28 = bufferCopy;
    [SMBNode nodeForCmpd:v16 onShareID:shareID callBack:v24];

    goto LABEL_5;
  }

  nameCopy = [smb_subr makeWindowsPath:compoundCopy withName:0, nameCopy];
  if (nameCopy)
  {
    goto LABEL_4;
  }

  v20 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    name = [compoundCopy name];
    v22 = name;
    [name UTF8String];
    sub_10005EF9C();
  }

  (*(handlerCopy + 2))(handlerCopy, 22);
LABEL_5:
  _Block_object_dispose(v32, 8);
}

+ (void)deleteNodeStream:(id)stream StreamName:(id)name CompletionHandler:(id)handler
{
  streamCopy = stream;
  nameCopy = name;
  handlerCopy = handler;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  if ([streamCopy isRoot])
  {
    v10 = 0;
LABEL_4:
    v11 = [streamCopy mp];
    v12 = [v11 pd];
    v13 = [streamCopy mp];
    shareID = [v13 shareID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000420A4;
    v19[3] = &unk_10008E640;
    v23 = handlerCopy;
    v20 = streamCopy;
    v24 = v25;
    v15 = v10;
    v21 = v15;
    v22 = nameCopy;
    [SMBNode nodeForCmpd:v12 onShareID:shareID callBack:v19];

    goto LABEL_5;
  }

  v10 = [smb_subr makeWindowsPath:streamCopy withName:0];
  if (v10)
  {
    goto LABEL_4;
  }

  v16 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    name = [streamCopy name];
    v18 = name;
    [name UTF8String];
    sub_10005F430();
  }

  (*(handlerCopy + 2))(handlerCopy, 22);
LABEL_5:
  _Block_object_dispose(v25, 8);
}

+ (void)enumDirOpen:(id)open SearchPattern:(id)pattern IsWildcard:(BOOL)wildcard CompletionHandler:(id)handler
{
  wildcardCopy = wildcard;
  openCopy = open;
  handlerCopy = handler;
  patternCopy = pattern;
  if ([openCopy isRoot])
  {
    v17 = 0;
  }

  else
  {
    v17 = [smb_subr makeWindowsPath:openCopy withName:0];
  }

  v11 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v12 = [openCopy mp];
  v13 = [v12 pd];
  v14 = [openCopy mp];
  shareID = [v14 shareID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004274C;
  v19[3] = &unk_10008E898;
  v20 = handlerCopy;
  v21 = v11;
  v16 = handlerCopy;
  [SMBDirEnumerator enumeratorWithParameters:v13 onShareID:shareID dirName:v17 lookUpName:patternCopy searchFlags:wildcardCopy outParameters:v11 callBack:v19];
}

+ (void)enumDirNext:(id)next DirEnt:(id)ent CompletionHandler:(id)handler
{
  handlerCopy = handler;
  entCopy = ent;
  nextCopy = next;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000428CC;
  v11[3] = &unk_10008E328;
  v12 = handlerCopy;
  v13 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v10 = handlerCopy;
  [nextCopy nextEntry:entCopy outParameters:v13 callBack:v11];
}

+ (void)enumDirClose:(id)close CompletionHandler:(id)handler
{
  handlerCopy = handler;
  closeCopy = close;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100042A3C;
  v8[3] = &unk_10008E328;
  v9 = handlerCopy;
  v10 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v7 = handlerCopy;
  [closeCopy close:v10 callBack:v8];
}

+ (void)setNodeBasicInfo:(id)info BasicInfo:(smb2_file_basic_info *)basicInfo FileType:(int)type CompletionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  if ([infoCopy isRoot])
  {
    v11 = 0;
LABEL_4:
    v12 = [infoCopy mp];
    v13 = [v12 pd];
    v14 = [infoCopy mp];
    shareID = [v14 shareID];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100043394;
    v20[3] = &unk_10008E8E8;
    v21 = infoCopy;
    typeCopy = type;
    v23 = handlerCopy;
    v24 = v27;
    v16 = v11;
    v22 = v16;
    basicInfoCopy = basicInfo;
    [SMBNode nodeForCmpd:v13 onShareID:shareID callBack:v20];

    goto LABEL_5;
  }

  v11 = [smb_subr makeWindowsPath:infoCopy withName:0];
  if (v11)
  {
    goto LABEL_4;
  }

  v17 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    name = [infoCopy name];
    v19 = name;
    [name UTF8String];
    sub_10005FC20();
  }

  (*(handlerCopy + 2))(handlerCopy, 22);
LABEL_5:
  _Block_object_dispose(v27, 8);
}

+ (void)setNodeEOF:(id)f Eof:(unint64_t)eof FileType:(int)type CompletionHandler:(id)handler
{
  fCopy = f;
  handlerCopy = handler;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  if ([fCopy isRoot])
  {
    v11 = 0;
LABEL_4:
    v12 = [fCopy mp];
    v13 = [v12 pd];
    v14 = [fCopy mp];
    shareID = [v14 shareID];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100043B10;
    v20[3] = &unk_10008E8E8;
    v21 = fCopy;
    typeCopy = type;
    v23 = handlerCopy;
    v24 = v27;
    v16 = v11;
    v22 = v16;
    eofCopy = eof;
    [SMBNode nodeForCmpd:v13 onShareID:shareID callBack:v20];

    goto LABEL_5;
  }

  v11 = [smb_subr makeWindowsPath:fCopy withName:0];
  if (v11)
  {
    goto LABEL_4;
  }

  v17 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    name = [fCopy name];
    v19 = name;
    [name UTF8String];
    sub_10006009C();
  }

  (*(handlerCopy + 2))(handlerCopy, 22);
LABEL_5:
  _Block_object_dispose(v27, 8);
}

+ (void)deleteNameInParent:(id)parent DeleteName:(id)name FileType:(int)type CompletionHandler:(id)handler
{
  parentCopy = parent;
  nameCopy = name;
  handlerCopy = handler;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v12 = [smb_subr makeWindowsPath:parentCopy withName:nameCopy];
  if (v12)
  {
    v13 = [parentCopy mp];
    v14 = [v13 pd];
    v15 = [parentCopy mp];
    shareID = [v15 shareID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004426C;
    v18[3] = &unk_10008E910;
    v19 = parentCopy;
    v20 = nameCopy;
    typeCopy = type;
    v22 = handlerCopy;
    v23 = v25;
    v21 = v12;
    [SMBNode nodeForCmpd:v14 onShareID:shareID callBack:v18];
  }

  else
  {
    v17 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [parentCopy name];
      objc_claimAutoreleasedReturnValue();
      sub_100060518();
    }

    (*(handlerCopy + 2))(handlerCopy, 22);
  }

  _Block_object_dispose(v25, 8);
}

+ (void)renameFile:(id)file FileName:(id)name NewParent:(id)parent NewName:(id)newName VType:(int)type CompletionHandler:(id)handler
{
  fileCopy = file;
  nameCopy = name;
  parentCopy = parent;
  newNameCopy = newName;
  handlerCopy = handler;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v35 = newNameCopy;
  if (parentCopy)
  {
    v17 = [smb_subr makeWindowsPath:parentCopy withName:newNameCopy];
    if (!v17)
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        name = [parentCopy name];
        v20 = name;
        uTF8String = [name UTF8String];
        v22 = v35;
        sub_1000609B0(uTF8String, [v35 UTF8String], v47, name);
      }

LABEL_13:

      handlerCopy[2](handlerCopy, 22);
      v17 = 0;
LABEL_14:
      v28 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v17 = [smb_subr makeWindowsPath:fileCopy withName:newNameCopy];
    if (!v17)
    {
      v30 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        name2 = [fileCopy name];
        v32 = name2;
        uTF8String2 = [name2 UTF8String];
        v34 = v35;
        sub_100060A4C(uTF8String2, [v35 UTF8String], v47, name2);
      }

      goto LABEL_13;
    }
  }

  v23 = [smb_subr makeWindowsPath:fileCopy withName:nameCopy];
  if (!v23)
  {
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [fileCopy name];
      objc_claimAutoreleasedReturnValue();
      sub_100060A00();
    }

    handlerCopy[2](handlerCopy, 22);
    goto LABEL_14;
  }

  v24 = [fileCopy mp];
  v25 = [v24 pd];
  v26 = [fileCopy mp];
  shareID = [v26 shareID];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100044B48;
  v37[3] = &unk_10008E938;
  v38 = fileCopy;
  v39 = nameCopy;
  typeCopy = type;
  v42 = handlerCopy;
  v43 = v45;
  v28 = v23;
  v40 = v28;
  v17 = v17;
  v41 = v17;
  [SMBNode nodeForCmpd:v25 onShareID:shareID callBack:v37];

LABEL_15:
  _Block_object_dispose(v45, 8);
}

+ (void)queryMaxAccess:(id)access CompletionHandler:(id)handler
{
  accessCopy = access;
  handlerCopy = handler;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  if ([accessCopy isRoot])
  {
    v7 = 0;
LABEL_4:
    v8 = [accessCopy mp];
    v9 = [v8 pd];
    v10 = [accessCopy mp];
    shareID = [v10 shareID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100045290;
    v14[3] = &unk_10008E988;
    v17 = handlerCopy;
    v15 = accessCopy;
    v18 = v19;
    v12 = v7;
    v16 = v12;
    [SMBNode nodeForCmpd:v9 onShareID:shareID callBack:v14];

    goto LABEL_5;
  }

  v7 = [smb_subr makeWindowsPath:accessCopy withName:0];
  if (v7)
  {
    goto LABEL_4;
  }

  v13 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [accessCopy name];
    objc_claimAutoreleasedReturnValue();
    sub_100060ED8();
  }

  (*(handlerCopy + 2))(handlerCopy, 22, 0);
LABEL_5:
  _Block_object_dispose(v19, 8);
}

+ (id)encodePath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy stringByReplacingOccurrencesOfString:@"/" withString:@"\\" options:2 range:{0, objc_msgSend(pathCopy, "length"")}];

  if (v4)
  {
    v5 = [v4 dataUsingEncoding:2483028224];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)makeWindowsPath:(id)path withName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v7 = objc_alloc_init(NSMutableString);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = pathCopy;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    do
    {
      if ([v11 isRoot])
      {
        break;
      }

      name = [v11 name];
      [v8 addObject:name];

      parent = [v11 parent];

      v11 = parent;
    }

    while (parent);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  reverseObjectEnumerator = [v8 reverseObjectEnumerator];
  v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [v7 appendFormat:@"%@/", *(*(&v22 + 1) + 8 * i)];
      }

      v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  if ([v7 length])
  {
    if (nameCopy)
    {
      [v7 appendFormat:@"%@", nameCopy];
      v19 = v7;
    }

    else
    {
      v19 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 1}];
    }

    goto LABEL_19;
  }

  if (nameCopy)
  {
    v19 = [[NSString alloc] initWithString:nameCopy];
LABEL_19:
    v20 = v19;
    goto LABEL_20;
  }

  v20 = 0;
LABEL_20:

  return v20;
}

+ (void)setChangeNotify:(id)notify Param:(changeNotifyArgs *)param CompletionHandler:(id)handler NotifyHandler:(id)notifyHandler
{
  notifyCopy = notify;
  handlerCopy = handler;
  notifyHandlerCopy = notifyHandler;
  if (notifyCopy)
  {
    [smb_subr sendChangeNotify:notifyCopy Param:param CompletionHandler:handlerCopy NotifyHandler:notifyHandlerCopy];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000611FC();
    }

    handlerCopy[2](handlerCopy, 22);
  }
}

@end