@interface smb_subr
+ (id)encodePath:(id)a3;
+ (id)makeWindowsPath:(id)a3 withName:(id)a4;
+ (int)sendLogoff:(id)a3 Param:(smb_login_out *)a4;
+ (int)sendNegotiate:(id)a3 Server:(id)a4 netBIOSName:(id)a5 VPNCookie:(id)a6 Result:(smb_negotiate *)a7;
+ (int)sendSessionSetup:(id)a3 User:(id)a4 Password:(id)a5 Realm:(id)a6 Param:(smb_login_out *)a7;
+ (int)sendTreeConnect:(id)a3 ShareName:(id)a4 Param:(smb_tree_connect_disc *)a5;
+ (void)checkForWindowsSymlink:(id)a3 CompletionHandler:(id)a4;
+ (void)createFile:(id)a3 NewName:(id)a4 FileType:(int)a5 RetAttr:(smbfattr *)a6 CompletionHandler:(id)a7;
+ (void)createReparseSymlink:(id)a3 NewName:(id)a4 Target:(id)a5 RetAttr:(smbfattr *)a6 CompletionHandler:(id)a7;
+ (void)createWindowsSymlink:(id)a3 NewName:(id)a4 Target:(id)a5 RetAttr:(smbfattr *)a6 CompletionHandler:(id)a7;
+ (void)deleteNameInParent:(id)a3 DeleteName:(id)a4 FileType:(int)a5 CompletionHandler:(id)a6;
+ (void)deleteNodeStream:(id)a3 StreamName:(id)a4 CompletionHandler:(id)a5;
+ (void)enumDirClose:(id)a3 CompletionHandler:(id)a4;
+ (void)enumDirNext:(id)a3 DirEnt:(id)a4 CompletionHandler:(id)a5;
+ (void)enumDirOpen:(id)a3 SearchPattern:(id)a4 IsWildcard:(BOOL)a5 CompletionHandler:(id)a6;
+ (void)listNodeStreams:(id)a3 CompletionHandler:(id)a4;
+ (void)openFileInParent:(id)a3 withName:(id)a4 withStream:(id)a5 withArgs:(openFileArgs *)a6 CompletionHandler:(id)a7;
+ (void)openFileNode:(id)a3 withStream:(id)a4 withArgs:(openFileArgs *)a5 CompletionHandler:(id)a6;
+ (void)queryMaxAccess:(id)a3 CompletionHandler:(id)a4;
+ (void)queryNameInParent:(id)a3 QueryName:(id)a4 FAttrs:(smbfattr *)a5 CompletionHandler:(id)a6;
+ (void)queryNode:(id)a3 attrs:(smbfattr *)a4 CompletionHandler:(id)a5;
+ (void)queryNodeStream:(id)a3 StreamName:(id)a4 CompletionHandler:(id)a5;
+ (void)readNodeStreamChunk:(id)a3 FileNode:(id)a4 ReadBuffer:(id)a5 MaxReadXferLen:(unsigned int)a6 StreamOffset:(unsigned int)a7 rdparamPtr:(smb_read_write *)a8 result:(int)a9 bytesRead:(unint64_t)a10 bytesRemain:(unint64_t)a11 pass:(unint64_t)a12 reply:(id)a13;
+ (void)readNodeStreamChunks:(id)a3 StreamName:(id)a4 ReadBuffer:(id)a5 MaxReadXferLen:(unsigned int)a6 CompletionHandler:(id)a7;
+ (void)readNodeStreamCompound:(id)a3 StreamName:(id)a4 ReadBuffer:(id)a5 CompletionHandler:(id)a6;
+ (void)readReparseSymlink:(id)a3 completionHandler:(id)a4;
+ (void)readSymlink:(id)a3 completionHandler:(id)a4;
+ (void)readWindowsSymlink:(id)a3 completionHandler:(id)a4;
+ (void)renameFile:(id)a3 FileName:(id)a4 NewParent:(id)a5 NewName:(id)a6 VType:(int)a7 CompletionHandler:(id)a8;
+ (void)sendChangeNotify:(id)a3 Param:(changeNotifyArgs *)a4 CompletionHandler:(id)a5 NotifyHandler:(id)a6;
+ (void)sendPipeTransceive:(id)a3 InData:(id)a4 OutData:(id)a5 CompletionHandler:(id)a6;
+ (void)sendRead:(id)a3 Param:(smb_read_write *)a4 ReadBuf:(id)a5 CompletionHandler:(id)a6;
+ (void)sendSetInfo:(id)a3 Param:(smb_setinfo *)a4 InputBuffer:(id)a5 RenameTarget:(id)a6 CompletionHandler:(id)a7;
+ (void)sendWrite:(id)a3 Param:(smb_read_write *)a4 WriteBuf:(id)a5 CompletionHandler:(id)a6;
+ (void)setChangeNotify:(id)a3 Param:(changeNotifyArgs *)a4 CompletionHandler:(id)a5 NotifyHandler:(id)a6;
+ (void)setNodeBasicInfo:(id)a3 BasicInfo:(smb2_file_basic_info *)a4 FileType:(int)a5 CompletionHandler:(id)a6;
+ (void)setNodeEOF:(id)a3 Eof:(unint64_t)a4 FileType:(int)a5 CompletionHandler:(id)a6;
+ (void)writeNodeStreamChunk:(id)a3 FileNode:(id)a4 WriteBuffer:(id)a5 MaxWriteXferLen:(unsigned int)a6 StreamOffset:(unsigned int)a7 wrparamPtr:(smb_read_write *)a8 result:(int)a9 bytesWritten:(unint64_t)a10 bytesRemain:(unint64_t)a11 pass:(unint64_t)a12 reply:(id)a13;
+ (void)writeNodeStreamChunks:(id)a3 StreamName:(id)a4 How:(int)a5 MaxWriteXferLen:(unsigned int)a6 WriteBuffer:(id)a7 CompletionHandler:(id)a8;
+ (void)writeNodeStreamCompound:(id)a3 StreamName:(id)a4 How:(int)a5 WriteBuffer:(id)a6 CompletionHandler:(id)a7;
@end

@implementation smb_subr

+ (int)sendNegotiate:(id)a3 Server:(id)a4 netBIOSName:(id)a5 VPNCookie:(id)a6 Result:(smb_negotiate *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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
  [v11 negotiateTo:v12 netBIOSname:v13 withVPNCookie:v14 outParameters:a7 callBack:v19];
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

+ (int)sendSessionSetup:(id)a3 User:(id)a4 Password:(id)a5 Realm:(id)a6 Param:(smb_login_out *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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
  [v11 login:a7 asUser:v12 withPassword:v13 inRealm:v14 callBack:v19];
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

+ (int)sendLogoff:(id)a3 Param:(smb_login_out *)a4
{
  v5 = a3;
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
  [v5 logoff:a4 callBack:v10];
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

+ (int)sendTreeConnect:(id)a3 ShareName:(id)a4 Param:(smb_tree_connect_disc *)a5
{
  v7 = a3;
  v8 = a4;
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
  [v7 treeConnect:a5 toShare:v8 callBack:v13];
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

+ (void)sendWrite:(id)a3 Param:(smb_read_write *)a4 WriteBuf:(id)a5 CompletionHandler:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100037670;
  v10[3] = &unk_10008E328;
  v11 = a6;
  v12 = a4;
  v9 = v11;
  [a3 write:a4 fromBuffer:a5 callBack:v10];
}

+ (void)sendRead:(id)a3 Param:(smb_read_write *)a4 ReadBuf:(id)a5 CompletionHandler:(id)a6
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003777C;
  v10[3] = &unk_10008E328;
  v11 = a6;
  v12 = a4;
  v9 = v11;
  [a3 read:a4 intoBuffer:a5 callBack:v10];
}

+ (void)sendPipeTransceive:(id)a3 InData:(id)a4 OutData:(id)a5 CompletionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
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
  v16 = v9;
  v17 = v13;
  v14 = v9;
  [v12 ioctl:v13 pipeTransceive:v11 withRecvData:v10 callBack:v15];
}

+ (void)sendSetInfo:(id)a3 Param:(smb_setinfo *)a4 InputBuffer:(id)a5 RenameTarget:(id)a6 CompletionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  a4->var0 = [v14 shareID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100037BEC;
  v16[3] = &unk_10008E328;
  v17 = v11;
  v18 = a4;
  v15 = v11;
  [v14 setInformation:a4 withInputBuffer:v13 withRenameTarget:v12 callBack:v16];
}

+ (void)sendChangeNotify:(id)a3 Param:(changeNotifyArgs *)a4 CompletionHandler:(id)a5 NotifyHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
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
    a4->pending = 1;
    flags = a4->flags;
    filter = a4->filter;
    v17 = v24[5];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100037E44;
    v18[3] = &unk_10008E370;
    v21 = &v23;
    v22 = a4;
    v19 = v9;
    v20 = v11;
    [v19 changeNotify:a4 withFlags:flags withFilter:filter returnDataIn:v17 callBack:v18];
    v10[2](v10, 0);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005A7AC();
    }

    v10[2](v10, 12);
  }

  _Block_object_dispose(&v23, 8);
}

+ (void)queryNameInParent:(id)a3 QueryName:(id)a4 FAttrs:(smbfattr *)a5 CompletionHandler:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [v11 mp];
  v13 = [v12 pd];
  v14 = [v11 mp];
  v15 = [v14 shareID];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100039B74;
  v17[3] = &unk_10008CA10;
  v18 = v9;
  v16 = v9;
  [smb_subr queryDirOneAttr:v13 ShareID:v15 DirNode:v11 withName:v10 FAttrs:a5 CompletionHandler:v17];
}

+ (void)openFileNode:(id)a3 withStream:(id)a4 withArgs:(openFileArgs *)a5 CompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v23 = a6;
  if ([v9 isRoot])
  {
    v11 = 0;
    goto LABEL_4;
  }

  v11 = [smb_subr makeWindowsPath:v9 withName:0];
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
    var0 = a5->var0;
    var1 = a5->var1;
    *(v12 + 3) = 2;
    *(v12 + 4) = var1;
    var3 = a5->var3;
    *(v12 + 6) = a5->var2;
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
        if (v10)
        {
          *v12 = 2;
        }

        v18 = [v9 mp];
        v19 = [v18 pd];
        v20 = [v9 mp];
        v21 = [v20 shareID];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100039DC4;
        v24[3] = &unk_10008E460;
        v26 = v13;
        v27 = a5;
        v22 = v23;
        v25 = v23;
        [smb_subr sendCreateFile:v19 ShareID:v21 FileName:v11 StreamName:v10 Param:v13 CompletionHandler:v24];

        goto LABEL_12;
      }

      v17 = 0x200000;
    }

    *(v12 + 8) = v17;
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005B680(v9);
  }

  v22 = v23;
  (*(v23 + 2))(v23, 22, 0);
LABEL_12:
}

+ (void)openFileInParent:(id)a3 withName:(id)a4 withStream:(id)a5 withArgs:(openFileArgs *)a6 CompletionHandler:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = [smb_subr makeWindowsPath:v11 withName:a4];
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
    var0 = a6->var0;
    var1 = a6->var1;
    *(v15 + 3) = 2;
    *(v15 + 4) = var1;
    *(v15 + 7) = var0;
    var2 = a6->var2;
    var3 = a6->var3;
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
        if (v12)
        {
          *v15 = 2;
        }

        v22 = [v11 mp];
        v23 = [v22 pd];
        v24 = [v11 mp];
        v25 = [v24 shareID];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10003A07C;
        v27[3] = &unk_10008E460;
        v29 = v16;
        v30 = a6;
        v28 = v13;
        v12 = v26;
        [smb_subr sendCreateFile:v23 ShareID:v25 FileName:v14 StreamName:v26 Param:v16 CompletionHandler:v27];

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
    sub_10005B794(v11);
  }

  (*(v13 + 2))(v13, 22, 0);
LABEL_13:
}

+ (void)createFile:(id)a3 NewName:(id)a4 FileType:(int)a5 RetAttr:(smbfattr *)a6 CompletionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  if ((a5 - 3) <= 0xFFFFFFFD)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B8EC();
    }

LABEL_9:
    v13[2](v13, 22);
    goto LABEL_10;
  }

  v14 = [smb_subr makeWindowsPath:v11 withName:v12];
  if (!v14)
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [v11 name];
      objc_claimAutoreleasedReturnValue();
      sub_10005B8A0();
    }

    goto LABEL_9;
  }

  v15 = [v11 mp];
  v16 = [v15 pd];
  v17 = [v11 mp];
  v18 = [v17 shareID];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003A38C;
  v21[3] = &unk_10008E4D8;
  v28 = a5;
  v25 = v13;
  v26 = v29;
  v19 = v14;
  v22 = v19;
  v23 = v11;
  v24 = v12;
  v27 = a6;
  [SMBNode nodeForCmpd:v16 onShareID:v18 callBack:v21];

LABEL_10:
  _Block_object_dispose(v29, 8);
}

+ (void)queryNode:(id)a3 attrs:(smbfattr *)a4 CompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 isRoot])
  {
    v9 = [v7 mp];
    v10 = [v9 pd];
    v11 = [v7 mp];
    v12 = [v11 shareID];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10003ADC4;
    v24[3] = &unk_10008E328;
    v26 = a4;
    v25 = v8;
    [smb_subr queryShareRoot:v10 ShareID:v12 FAttrs:a4 CompletionHandler:v24];
  }

  else
  {
    v13 = [v7 parent];

    if (v13)
    {
      v14 = [v7 mp];
      v15 = [v14 pd];
      v16 = [v7 mp];
      v17 = [v16 shareID];
      v18 = [v7 parent];
      v19 = [v7 name];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10003AE38;
      v20[3] = &unk_10008E148;
      v21 = v7;
      v23 = a4;
      v22 = v8;
      [smb_subr queryDirOneAttr:v15 ShareID:v17 DirNode:v18 withName:v19 FAttrs:a4 CompletionHandler:v20];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005BDE0(v7);
      }

      (*(v8 + 2))(v8, 22);
    }
  }
}

+ (void)createReparseSymlink:(id)a3 NewName:(id)a4 Target:(id)a5 RetAttr:(smbfattr *)a6 CompletionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  if (!v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C0A4();
    }

    goto LABEL_9;
  }

  if (![v13 length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C060();
    }

LABEL_9:
    v14[2](v14, 22);
    goto LABEL_14;
  }

  v15 = [smb_subr makeWindowsPath:v11 withName:v12];
  if (v15)
  {
    v16 = [v11 mp];
    v17 = [v16 pd];
    v18 = [v11 mp];
    v19 = [v18 shareID];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10003B314;
    v25[3] = &unk_10008E578;
    v30 = v14;
    v31 = v33;
    v26 = v15;
    v27 = v13;
    v28 = v11;
    v29 = v12;
    v32 = a6;
    [SMBNode nodeForCmpd:v17 onShareID:v19 callBack:v25];
  }

  else
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = [v11 name];
      v22 = v21;
      v23 = [v21 UTF8String];
      v24 = v12;
      sub_10005C010(v23, [v12 UTF8String], v35, v21);
    }

    v14[2](v14, 22);
  }

LABEL_14:
  _Block_object_dispose(v33, 8);
}

+ (void)createWindowsSymlink:(id)a3 NewName:(id)a4 Target:(id)a5 RetAttr:(smbfattr *)a6 CompletionHandler:(id)a7
{
  v11 = a3;
  v23 = a4;
  v12 = a5;
  v13 = a7;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v30 = 0;
  v14 = sub_100033104(v12, &v30);
  if (!v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005C834(&v30);
    }

    v21 = v30;
    goto LABEL_10;
  }

  v15 = [smb_subr makeWindowsPath:v11 withName:v23];
  if (!v15)
  {
    v22 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [v11 name];
      objc_claimAutoreleasedReturnValue();
      sub_10005C7E8();
    }

    free(v14);
    v21 = 22;
LABEL_10:
    v13[2](v13, v21);
    goto LABEL_11;
  }

  v16 = [v11 mp];
  v17 = [v16 pd];
  v18 = [v11 mp];
  v19 = [v18 shareID];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10003C180;
  v24[3] = &unk_10008E5A0;
  v26 = v13;
  v27 = v31;
  v20 = v15;
  v25 = v20;
  v28 = v14;
  v29 = a6;
  [SMBNode nodeForCmpd:v17 onShareID:v19 callBack:v24];

LABEL_11:
  _Block_object_dispose(v31, 8);
}

+ (void)readSymlink:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 np_flag])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003CA08;
    v10[3] = &unk_10008E5C8;
    v11 = v6;
    [smb_subr readWindowsSymlink:v5 completionHandler:v10];
    v7 = v11;
LABEL_8:

    goto LABEL_9;
  }

  if (([v5 np_flag] & 2) != 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003CA18;
    v8[3] = &unk_10008E5C8;
    v9 = v6;
    [smb_subr readReparseSymlink:v5 completionHandler:v8];
    v7 = v9;
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005CCC4(v5);
  }

  (*(v6 + 2))(v6, 22, 0);
LABEL_9:
}

+ (void)readReparseSymlink:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
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
      [v5 name];
      objc_claimAutoreleasedReturnValue();
      sub_10005CDBC();
    }

    v10 = 12;
    goto LABEL_12;
  }

  if (([v5 isRoot] & 1) == 0)
  {
    v8 = [smb_subr makeWindowsPath:v5 withName:0];
    if (v8)
    {
      goto LABEL_8;
    }

    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v17 = [v5 name];
      v18 = v17;
      [v17 UTF8String];
      sub_10005CD70();
    }

    v10 = 22;
LABEL_12:

    v6[2](v6, v10, 0);
    goto LABEL_13;
  }

  v8 = 0;
LABEL_8:
  v11 = [v5 mp];
  v12 = [v11 pd];
  v13 = [v5 mp];
  v14 = [v13 shareID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003CCD0;
  v19[3] = &unk_10008E618;
  v22 = v6;
  v23 = v24;
  v15 = v8;
  v20 = v15;
  v21 = v7;
  [SMBNode nodeForCmpd:v12 onShareID:v14 callBack:v19];

LABEL_13:
  _Block_object_dispose(v24, 8);
}

+ (void)readWindowsSymlink:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  if (([v5 isRoot] & 1) == 0)
  {
    v8 = [smb_subr makeWindowsPath:v5 withName:0];
    if (v8)
    {
      goto LABEL_8;
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 name];
      v17 = v16;
      [v16 UTF8String];
      sub_10005D1D4();
    }

    v9 = 22;
LABEL_12:
    v6[2](v6, v9, 0);
    goto LABEL_13;
  }

  v8 = 0;
LABEL_8:
  v10 = [v5 mp];
  v11 = [v10 pd];
  v12 = [v5 mp];
  v13 = [v12 shareID];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003D448;
  v18[3] = &unk_10008E618;
  v21 = v6;
  v22 = v23;
  v14 = v8;
  v19 = v14;
  v20 = v7;
  [SMBNode nodeForCmpd:v11 onShareID:v13 callBack:v18];

LABEL_13:
  _Block_object_dispose(v23, 8);
}

+ (void)checkForWindowsSymlink:(id)a3 CompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  if (([v5 isRoot] & 1) == 0)
  {
    v8 = [smb_subr makeWindowsPath:v5 withName:0];
    if (v8)
    {
      goto LABEL_8;
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 name];
      v17 = v16;
      [v16 UTF8String];
      sub_10005D724();
    }

    v9 = 22;
LABEL_12:
    (*(v6 + 2))(v6, v9, 0, 0);
    goto LABEL_13;
  }

  v8 = 0;
LABEL_8:
  v10 = [v5 mp];
  v11 = [v10 pd];
  v12 = [v5 mp];
  v13 = [v12 shareID];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003DCB4;
  v18[3] = &unk_10008E618;
  v21 = v6;
  v22 = v23;
  v14 = v8;
  v19 = v14;
  v20 = v7;
  [SMBNode nodeForCmpd:v11 onShareID:v13 callBack:v18];

LABEL_13:
  _Block_object_dispose(v23, 8);
}

+ (void)listNodeStreams:(id)a3 CompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  if (([v5 isRoot] & 1) == 0)
  {
    v8 = [smb_subr makeWindowsPath:v5 withName:0];
    if (v8)
    {
      goto LABEL_6;
    }

    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 name];
      v17 = v16;
      [v16 UTF8String];
      sub_10005DBFC();
    }

    v9 = 22;
LABEL_10:
    v6[2](v6, v9, 0);
    goto LABEL_11;
  }

  v8 = 0;
LABEL_6:
  v10 = [v5 mp];
  v11 = [v10 pd];
  v12 = [v5 mp];
  v13 = [v12 shareID];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003E4B4;
  v18[3] = &unk_10008E640;
  v22 = v6;
  v19 = v5;
  v23 = v24;
  v14 = v8;
  v20 = v14;
  v21 = v7;
  [SMBNode nodeForCmpd:v11 onShareID:v13 callBack:v18];

LABEL_11:
  _Block_object_dispose(v24, 8);
}

+ (void)queryNodeStream:(id)a3 StreamName:(id)a4 CompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
  if ([v7 isRoot])
  {
    v10 = 0;
LABEL_4:
    v11 = [v7 mp];
    v12 = [v11 pd];
    v13 = [v7 mp];
    v14 = [v13 shareID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003ECD0;
    v19[3] = &unk_10008E690;
    v23 = v9;
    v20 = v7;
    v24 = v30;
    v15 = v10;
    v21 = v15;
    v22 = v8;
    v25 = v29;
    v26 = v27;
    [SMBNode nodeForCmpd:v12 onShareID:v14 callBack:v19];

    goto LABEL_5;
  }

  v10 = [smb_subr makeWindowsPath:v7 withName:0];
  if (v10)
  {
    goto LABEL_4;
  }

  v16 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v17 = [v7 name];
    v18 = v17;
    [v17 UTF8String];
    sub_10005E014();
  }

  (*(v9 + 2))(v9, 22, 0, 0);
LABEL_5:
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
}

+ (void)readNodeStreamChunks:(id)a3 StreamName:(id)a4 ReadBuffer:(id)a5 MaxReadXferLen:(unsigned int)a6 CompletionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if ([v11 isRoot])
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
    if (*([v11 getSmbFattr] + 30) == 5)
    {
      *(v16 + 8) |= 0x200000u;
    }

    v17 = [v11 mp];
    v18 = [v17 pd];
    v19 = [v11 mp];
    v20 = [v19 shareID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10003F6A8;
    v22[3] = &unk_10008E730;
    v23 = v11;
    v24 = v12;
    v27 = v16;
    v26 = v14;
    v25 = v13;
    v28 = a6;
    [smb_subr sendCreateFile:v18 ShareID:v20 FileName:v21 StreamName:v24 Param:v16 CompletionHandler:v22];

    goto LABEL_7;
  }

  v15 = [smb_subr makeWindowsPath:v11 withName:0];
  if (v15)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005E42C(v11);
  }

  (*(v14 + 2))(v14, 22, 0);
LABEL_7:
}

+ (void)readNodeStreamChunk:(id)a3 FileNode:(id)a4 ReadBuffer:(id)a5 MaxReadXferLen:(unsigned int)a6 StreamOffset:(unsigned int)a7 rdparamPtr:(smb_read_write *)a8 result:(int)a9 bytesRead:(unint64_t)a10 bytesRemain:(unint64_t)a11 pass:(unint64_t)a12 reply:(id)a13
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a13;
  v21 = [v17 xattrIOQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FE08;
  block[3] = &unk_10008E780;
  v38 = a6;
  v39 = a7;
  v33 = a10;
  v34 = a11;
  v40 = a9;
  v29 = v17;
  v30 = v19;
  v31 = v18;
  v32 = v20;
  v35 = a8;
  v36 = a12;
  v37 = a1;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v17;
  dispatch_async(v21, block);
}

+ (void)readNodeStreamCompound:(id)a3 StreamName:(id)a4 ReadBuffer:(id)a5 CompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  if ([v9 isRoot])
  {
    v13 = 0;
LABEL_4:
    v14 = [v9 mp];
    v15 = [v14 pd];
    v16 = [v9 mp];
    v17 = [v16 shareID];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004031C;
    v22[3] = &unk_10008E7A8;
    v27 = v12;
    v23 = v9;
    v28 = v29;
    v18 = v13;
    v24 = v18;
    v25 = v10;
    v26 = v11;
    [SMBNode nodeForCmpd:v15 onShareID:v17 callBack:v22];

    goto LABEL_5;
  }

  v13 = [smb_subr makeWindowsPath:v9 withName:0];
  if (v13)
  {
    goto LABEL_4;
  }

  v19 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v20 = [v9 name];
    v21 = v20;
    [v20 UTF8String];
    sub_10005E74C();
  }

  (*(v12 + 2))(v12, 22, 0);
LABEL_5:
  _Block_object_dispose(v29, 8);
}

+ (void)writeNodeStreamChunks:(id)a3 StreamName:(id)a4 How:(int)a5 MaxWriteXferLen:(unsigned int)a6 WriteBuffer:(id)a7 CompletionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  if ([v14 isRoot])
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
    if (*([v14 getSmbFattr] + 30) == 5)
    {
      *(v19 + 8) |= 0x200000u;
    }

    if (a5 >= 3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005EC94();
      }

      v17[2](v17, 22);
    }

    else
    {
      v24 = a1;
      *(v19 + 7) = dword_10006D600[a5];
      if (*([v14 getSmbFattr] + 30) == 5)
      {
        *(v19 + 8) |= 0x200000u;
      }

      v20 = [v14 mp];
      v21 = [v20 pd];
      v22 = [v14 mp];
      v23 = [v22 shareID];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100040D48;
      v25[3] = &unk_10008E820;
      v26 = v14;
      v27 = v15;
      v30 = v19;
      v29 = v17;
      v31 = v24;
      v28 = v16;
      v32 = a6;
      [smb_subr sendCreateFile:v21 ShareID:v23 FileName:v18 StreamName:v27 Param:v19 CompletionHandler:v25];
    }

    goto LABEL_14;
  }

  v18 = [smb_subr makeWindowsPath:v14 withName:0];
  if (v18)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005EBFC(v14);
  }

  v17[2](v17, 22);
LABEL_14:
}

+ (void)writeNodeStreamChunk:(id)a3 FileNode:(id)a4 WriteBuffer:(id)a5 MaxWriteXferLen:(unsigned int)a6 StreamOffset:(unsigned int)a7 wrparamPtr:(smb_read_write *)a8 result:(int)a9 bytesWritten:(unint64_t)a10 bytesRemain:(unint64_t)a11 pass:(unint64_t)a12 reply:(id)a13
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a13;
  v21 = [v17 xattrIOQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000413A4;
  block[3] = &unk_10008E780;
  v38 = a6;
  v39 = a7;
  v33 = a10;
  v34 = a11;
  v40 = a9;
  v29 = v17;
  v30 = v19;
  v31 = v18;
  v32 = v20;
  v35 = a8;
  v36 = a12;
  v37 = a1;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v17;
  dispatch_async(v21, block);
}

+ (void)writeNodeStreamCompound:(id)a3 StreamName:(id)a4 How:(int)a5 WriteBuffer:(id)a6 CompletionHandler:(id)a7
{
  v11 = a3;
  v23 = a4;
  v12 = a6;
  v13 = a7;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  if ([v11 isRoot])
  {
    v14 = 0;
LABEL_4:
    v15 = [v11 mp];
    v16 = [v15 pd];
    v17 = [v11 mp];
    v18 = [v17 shareID];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000418EC;
    v24[3] = &unk_10008E870;
    v29 = v13;
    v31 = a5;
    v25 = v11;
    v30 = v32;
    v19 = v14;
    v26 = v19;
    v27 = v23;
    v28 = v12;
    [SMBNode nodeForCmpd:v16 onShareID:v18 callBack:v24];

    goto LABEL_5;
  }

  v14 = [smb_subr makeWindowsPath:v11 withName:0, v23];
  if (v14)
  {
    goto LABEL_4;
  }

  v20 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v21 = [v11 name];
    v22 = v21;
    [v21 UTF8String];
    sub_10005EF9C();
  }

  (*(v13 + 2))(v13, 22);
LABEL_5:
  _Block_object_dispose(v32, 8);
}

+ (void)deleteNodeStream:(id)a3 StreamName:(id)a4 CompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  if ([v7 isRoot])
  {
    v10 = 0;
LABEL_4:
    v11 = [v7 mp];
    v12 = [v11 pd];
    v13 = [v7 mp];
    v14 = [v13 shareID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000420A4;
    v19[3] = &unk_10008E640;
    v23 = v9;
    v20 = v7;
    v24 = v25;
    v15 = v10;
    v21 = v15;
    v22 = v8;
    [SMBNode nodeForCmpd:v12 onShareID:v14 callBack:v19];

    goto LABEL_5;
  }

  v10 = [smb_subr makeWindowsPath:v7 withName:0];
  if (v10)
  {
    goto LABEL_4;
  }

  v16 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v17 = [v7 name];
    v18 = v17;
    [v17 UTF8String];
    sub_10005F430();
  }

  (*(v9 + 2))(v9, 22);
LABEL_5:
  _Block_object_dispose(v25, 8);
}

+ (void)enumDirOpen:(id)a3 SearchPattern:(id)a4 IsWildcard:(BOOL)a5 CompletionHandler:(id)a6
{
  v18 = a5;
  v8 = a3;
  v9 = a6;
  v10 = a4;
  if ([v8 isRoot])
  {
    v17 = 0;
  }

  else
  {
    v17 = [smb_subr makeWindowsPath:v8 withName:0];
  }

  v11 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v12 = [v8 mp];
  v13 = [v12 pd];
  v14 = [v8 mp];
  v15 = [v14 shareID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004274C;
  v19[3] = &unk_10008E898;
  v20 = v9;
  v21 = v11;
  v16 = v9;
  [SMBDirEnumerator enumeratorWithParameters:v13 onShareID:v15 dirName:v17 lookUpName:v10 searchFlags:v18 outParameters:v11 callBack:v19];
}

+ (void)enumDirNext:(id)a3 DirEnt:(id)a4 CompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000428CC;
  v11[3] = &unk_10008E328;
  v12 = v7;
  v13 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v10 = v7;
  [v9 nextEntry:v8 outParameters:v13 callBack:v11];
}

+ (void)enumDirClose:(id)a3 CompletionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100042A3C;
  v8[3] = &unk_10008E328;
  v9 = v5;
  v10 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v7 = v5;
  [v6 close:v10 callBack:v8];
}

+ (void)setNodeBasicInfo:(id)a3 BasicInfo:(smb2_file_basic_info *)a4 FileType:(int)a5 CompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  if ([v9 isRoot])
  {
    v11 = 0;
LABEL_4:
    v12 = [v9 mp];
    v13 = [v12 pd];
    v14 = [v9 mp];
    v15 = [v14 shareID];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100043394;
    v20[3] = &unk_10008E8E8;
    v21 = v9;
    v26 = a5;
    v23 = v10;
    v24 = v27;
    v16 = v11;
    v22 = v16;
    v25 = a4;
    [SMBNode nodeForCmpd:v13 onShareID:v15 callBack:v20];

    goto LABEL_5;
  }

  v11 = [smb_subr makeWindowsPath:v9 withName:0];
  if (v11)
  {
    goto LABEL_4;
  }

  v17 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v18 = [v9 name];
    v19 = v18;
    [v18 UTF8String];
    sub_10005FC20();
  }

  (*(v10 + 2))(v10, 22);
LABEL_5:
  _Block_object_dispose(v27, 8);
}

+ (void)setNodeEOF:(id)a3 Eof:(unint64_t)a4 FileType:(int)a5 CompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  if ([v9 isRoot])
  {
    v11 = 0;
LABEL_4:
    v12 = [v9 mp];
    v13 = [v12 pd];
    v14 = [v9 mp];
    v15 = [v14 shareID];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100043B10;
    v20[3] = &unk_10008E8E8;
    v21 = v9;
    v26 = a5;
    v23 = v10;
    v24 = v27;
    v16 = v11;
    v22 = v16;
    v25 = a4;
    [SMBNode nodeForCmpd:v13 onShareID:v15 callBack:v20];

    goto LABEL_5;
  }

  v11 = [smb_subr makeWindowsPath:v9 withName:0];
  if (v11)
  {
    goto LABEL_4;
  }

  v17 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v18 = [v9 name];
    v19 = v18;
    [v18 UTF8String];
    sub_10006009C();
  }

  (*(v10 + 2))(v10, 22);
LABEL_5:
  _Block_object_dispose(v27, 8);
}

+ (void)deleteNameInParent:(id)a3 DeleteName:(id)a4 FileType:(int)a5 CompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v12 = [smb_subr makeWindowsPath:v9 withName:v10];
  if (v12)
  {
    v13 = [v9 mp];
    v14 = [v13 pd];
    v15 = [v9 mp];
    v16 = [v15 shareID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004426C;
    v18[3] = &unk_10008E910;
    v19 = v9;
    v20 = v10;
    v24 = a5;
    v22 = v11;
    v23 = v25;
    v21 = v12;
    [SMBNode nodeForCmpd:v14 onShareID:v16 callBack:v18];
  }

  else
  {
    v17 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [v9 name];
      objc_claimAutoreleasedReturnValue();
      sub_100060518();
    }

    (*(v11 + 2))(v11, 22);
  }

  _Block_object_dispose(v25, 8);
}

+ (void)renameFile:(id)a3 FileName:(id)a4 NewParent:(id)a5 NewName:(id)a6 VType:(int)a7 CompletionHandler:(id)a8
{
  v13 = a3;
  v36 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v35 = v15;
  if (v14)
  {
    v17 = [smb_subr makeWindowsPath:v14 withName:v15];
    if (!v17)
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = [v14 name];
        v20 = v19;
        v21 = [v19 UTF8String];
        v22 = v35;
        sub_1000609B0(v21, [v35 UTF8String], v47, v19);
      }

LABEL_13:

      v16[2](v16, 22);
      v17 = 0;
LABEL_14:
      v28 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v17 = [smb_subr makeWindowsPath:v13 withName:v15];
    if (!v17)
    {
      v30 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v31 = [v13 name];
        v32 = v31;
        v33 = [v31 UTF8String];
        v34 = v35;
        sub_100060A4C(v33, [v35 UTF8String], v47, v31);
      }

      goto LABEL_13;
    }
  }

  v23 = [smb_subr makeWindowsPath:v13 withName:v36];
  if (!v23)
  {
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [v13 name];
      objc_claimAutoreleasedReturnValue();
      sub_100060A00();
    }

    v16[2](v16, 22);
    goto LABEL_14;
  }

  v24 = [v13 mp];
  v25 = [v24 pd];
  v26 = [v13 mp];
  v27 = [v26 shareID];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100044B48;
  v37[3] = &unk_10008E938;
  v38 = v13;
  v39 = v36;
  v44 = a7;
  v42 = v16;
  v43 = v45;
  v28 = v23;
  v40 = v28;
  v17 = v17;
  v41 = v17;
  [SMBNode nodeForCmpd:v25 onShareID:v27 callBack:v37];

LABEL_15:
  _Block_object_dispose(v45, 8);
}

+ (void)queryMaxAccess:(id)a3 CompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  if ([v5 isRoot])
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 mp];
    v9 = [v8 pd];
    v10 = [v5 mp];
    v11 = [v10 shareID];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100045290;
    v14[3] = &unk_10008E988;
    v17 = v6;
    v15 = v5;
    v18 = v19;
    v12 = v7;
    v16 = v12;
    [SMBNode nodeForCmpd:v9 onShareID:v11 callBack:v14];

    goto LABEL_5;
  }

  v7 = [smb_subr makeWindowsPath:v5 withName:0];
  if (v7)
  {
    goto LABEL_4;
  }

  v13 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [v5 name];
    objc_claimAutoreleasedReturnValue();
    sub_100060ED8();
  }

  (*(v6 + 2))(v6, 22, 0);
LABEL_5:
  _Block_object_dispose(v19, 8);
}

+ (id)encodePath:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByReplacingOccurrencesOfString:@"/" withString:@"\\" options:2 range:{0, objc_msgSend(v3, "length"")}];

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

+ (id)makeWindowsPath:(id)a3 withName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableString);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = v5;
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

      v12 = [v11 name];
      [v8 addObject:v12];

      v13 = [v11 parent];

      v11 = v13;
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v8 reverseObjectEnumerator];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v14);
        }

        [v7 appendFormat:@"%@/", *(*(&v22 + 1) + 8 * i)];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  if ([v7 length])
  {
    if (v6)
    {
      [v7 appendFormat:@"%@", v6];
      v19 = v7;
    }

    else
    {
      v19 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 1}];
    }

    goto LABEL_19;
  }

  if (v6)
  {
    v19 = [[NSString alloc] initWithString:v6];
LABEL_19:
    v20 = v19;
    goto LABEL_20;
  }

  v20 = 0;
LABEL_20:

  return v20;
}

+ (void)setChangeNotify:(id)a3 Param:(changeNotifyArgs *)a4 CompletionHandler:(id)a5 NotifyHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v9)
  {
    [smb_subr sendChangeNotify:v9 Param:a4 CompletionHandler:v10 NotifyHandler:v11];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000611FC();
    }

    v10[2](v10, 22);
  }
}

@end