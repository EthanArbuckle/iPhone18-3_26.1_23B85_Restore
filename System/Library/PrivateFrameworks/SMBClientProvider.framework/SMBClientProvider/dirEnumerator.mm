@interface dirEnumerator
- (dirEnumerator)initWithNode:(id)node;
- (int)closeEnumeration;
- (int)fillDirEntry:(char *)entry withBufLen:(unint64_t)len DirEntry:(id)dirEntry IsReadDirAttr:(BOOL)attr retBytesWritten:(unsigned int *)written;
- (int)openEnumeration;
- (int)resetCurrentIndex:(unint64_t)index;
- (int)restart_dir_enum;
- (int)skipAnEntry;
- (smbNode)dnp;
- (void)close_dir_enum;
- (void)getEntriesInBuffer:(char *)buffer BufferLen:(unint64_t)len CookieIn:(unint64_t)in VerifyIn:(unint64_t)verifyIn IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler;
- (void)processNextEntry:(unsigned int)entry inbufPtr:(char *)ptr prevEntry:(void *)prevEntry inbufRemain:(unint64_t)remain bytesFilled:(unsigned int)filled IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler;
- (void)resetAfterReconnect;
@end

@implementation dirEnumerator

- (dirEnumerator)initWithNode:(id)node
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = dirEnumerator;
  v5 = [(dirEnumerator *)&v13 init];
  v6 = v5;
  if (v5)
  {
    deObj = v5->_deObj;
    v5->_deObj = 0;

    tmpDent = v6->_tmpDent;
    v6->_tmpDent = 0;

    objc_storeWeak(&v6->_dnp, nodeCopy);
    dentObjSave = v6->_dentObjSave;
    v6->_dentObjSave = 0;

    v6->_entryIndex = 0;
    v6->_enumState = 0;
    v10 = dispatch_queue_create("com.apple.SMBProvider.dirEnumerationSyncQueue", 0);
    dirEnumerationSyncQueue = v6->_dirEnumerationSyncQueue;
    v6->_dirEnumerationSyncQueue = v10;
  }

  return v6;
}

- (void)resetAfterReconnect
{
  if ([(dirEnumerator *)self enumState]== 1)
  {
    [(dirEnumerator *)self closeEnumeration];

    [(dirEnumerator *)self setEnumState:0];
  }
}

- (int)closeEnumeration
{
  v3 = dispatch_group_create();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  dispatch_group_enter(v3);
  deObj = [(dirEnumerator *)self deObj];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000023DC;
  v12 = &unk_10008C740;
  v14 = &v15;
  v5 = v3;
  v13 = v5;
  [smb_subr enumDirClose:deObj CompletionHandler:&v9];

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [(dirEnumerator *)self dentObjSave:v9];

  if (v6)
  {
    [(dirEnumerator *)self setDentObjSave:0];
  }

  self->_entryIndex = 0;
  self->_enumState = 0;
  v7 = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (int)openEnumeration
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_group_create();
  *(v13 + 6) = 0;
  dentObjSave = [(dirEnumerator *)self dentObjSave];

  if (dentObjSave)
  {
    [(dirEnumerator *)self setDentObjSave:0];
  }

  self->_entryIndex = 0;
  dispatch_group_enter(v3);
  v5 = [(dirEnumerator *)self dnp];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002554;
  v9[3] = &unk_10008C768;
  v11 = &v12;
  v9[4] = self;
  v6 = v3;
  v10 = v6;
  [smb_subr enumDirOpen:v5 SearchPattern:@"*" IsWildcard:1 CompletionHandler:v9];

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (int)restart_dir_enum
{
  enumState = self->_enumState;
  if ((enumState - 1) >= 2)
  {
    if (enumState)
    {
      return 0;
    }

    else
    {
      openEnumeration = [(dirEnumerator *)self openEnumeration];
      if (openEnumeration && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004BADC();
      }
    }
  }

  else
  {
    [(dirEnumerator *)self closeEnumeration];
    openEnumeration = [(dirEnumerator *)self openEnumeration];
    if (openEnumeration && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004BA58();
    }
  }

  return openEnumeration;
}

- (void)close_dir_enum
{
  if ((self->_enumState - 1) <= 1)
  {
    [(dirEnumerator *)self closeEnumeration];
  }
}

- (int)skipAnEntry
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  p_entryIndex = &self->_entryIndex;
  entryIndex = self->_entryIndex;
  if (entryIndex > 1)
  {
    tmpDent = [(dirEnumerator *)self tmpDent];

    if (tmpDent || (v7 = objc_alloc_init(SMBDirEntry), [(dirEnumerator *)self setTmpDent:v7], v7, [(dirEnumerator *)self tmpDent], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = dispatch_group_create();
      dispatch_group_enter(v9);
      deObj = [(dirEnumerator *)self deObj];
      tmpDent2 = [(dirEnumerator *)self tmpDent];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100002880;
      v14[3] = &unk_10008C790;
      v16 = &v17;
      v14[4] = self;
      v12 = v9;
      v15 = v12;
      [smb_subr enumDirNext:deObj DirEnt:tmpDent2 CompletionHandler:v14];

      dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      v4 = *(v18 + 6);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004BB54(p_entryIndex);
      }

      v4 = 12;
      *(v18 + 6) = 12;
    }
  }

  else
  {
    v4 = 0;
    *p_entryIndex = entryIndex + 1;
  }

  _Block_object_dispose(&v17, 8);
  return v4;
}

- (int)resetCurrentIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dnp);
  if (self->_entryIndex <= index || (v6 = [(dirEnumerator *)self restart_dir_enum]) == 0)
  {
    do
    {
      if (self->_entryIndex == index)
      {
        v7 = 0;
        goto LABEL_11;
      }

      skipAnEntry = [(dirEnumerator *)self skipAnEntry];
    }

    while (!skipAnEntry);
    v7 = skipAnEntry;
    v11 = &_os_log_default;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    if (WeakRetained)
    {
      name = [WeakRetained name];
    }

    else
    {
      name = @"nil";
    }

    entryIndex = self->_entryIndex;
    v16 = 138413058;
    v17 = name;
    v18 = 2048;
    v19 = entryIndex;
    v20 = 2048;
    indexCopy2 = index;
    v22 = 1024;
    v23 = v7;
    v14 = "resetCurrentIndex: dnp: %@, entryIndex: %llu, requestedIndex: %llu, skipAnEntry error: %d\n";
    goto LABEL_18;
  }

  v7 = v6;
  v8 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      name = [WeakRetained name];
    }

    else
    {
      name = @"nil";
    }

    v15 = self->_entryIndex;
    v16 = 138413058;
    v17 = name;
    v18 = 2048;
    v19 = v15;
    v20 = 2048;
    indexCopy2 = index;
    v22 = 1024;
    v23 = v7;
    v14 = "resetCurrentIndex: dnp: %@, entryIndex: %llu, requestedIndex: %llu, restart_dir_enum error: %d\n";
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    if (WeakRetained)
    {
    }
  }

LABEL_9:

LABEL_11:
  return v7;
}

- (int)fillDirEntry:(char *)entry withBufLen:(unint64_t)len DirEntry:(id)dirEntry IsReadDirAttr:(BOOL)attr retBytesWritten:(unsigned int *)written
{
  attrCopy = attr;
  dirEntryCopy = dirEntry;
  v13 = dirEntryCopy;
  if (dirEntryCopy)
  {
    [dirEntryCopy attributes];
    if (DWORD2(v95) == 1)
    {
      v14 = 1;
      v15 = 1;
      goto LABEL_12;
    }

    [v13 attributes];
    if (DWORD2(v80) == 2)
    {
      v14 = 0;
      v15 = 2;
      goto LABEL_12;
    }

    [v13 attributes];
    if (DWORD2(v65) == 5)
    {
      v14 = 0;
      v15 = 3;
      goto LABEL_12;
    }
  }

  else
  {
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004BC68(v13, v13 == 0, v57);
  }

  v14 = 0;
  v15 = 0;
LABEL_12:
  name = [v13 name];
  uTF8String = [name UTF8String];

  v18 = strnlen(uTF8String, 0xFFuLL);
  v19 = v18;
  if (attrCopy)
  {
    if (len <= 0xC7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004BDCC();
      }

      goto LABEL_22;
    }

    *(entry + 5) = 200;
    v20 = (v18 & 0xFFF8) + 208;
    if ((v20 & 0xFFF8u) > len)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004BD44();
      }

      goto LABEL_22;
    }

    *entry = self->_entryIndex + 1;
    *(entry + 4) = v20;
    *(entry + 6) = v18;
    *(entry + 3) = 0;
    if (v13)
    {
      [v13 attributes];
      v23 = v56 & 1;
    }

    else
    {
      v23 = 0;
    }

    if ((v14 | v23) == 1)
    {
      *(entry + 10) = v15;
      *(entry + 3) |= 1uLL;
    }

    if (v13)
    {
      [v13 attributes];
      if ((v55 & 0x40) != 0)
      {
        [v13 attributes];
        v25 = sub_100032988(v54);
      }

      else
      {
        v25 = 448;
      }

      *(entry + 11) = v25;
      *(entry + 3) |= 2uLL;
      [v13 attributes];
      *(entry + 8) = v53;
      *(entry + 3) |= 0x40uLL;
      [v13 attributes];
      *(entry + 9) = v52;
      *(entry + 3) |= 0x80uLL;
      [v13 attributes];
      *(entry + 10) = v51;
      *(entry + 3) |= 0x100uLL;
      [v13 attributes];
      *(entry + 6) = v50;
      *(entry + 3) |= 0x400uLL;
      [v13 attributes];
      *(entry + 7) = v49;
      *(entry + 3) |= 0x800uLL;
      [v13 attributes];
      v27 = *(entry + 3);
    }

    else
    {
      *(entry + 11) = 448;
      v26 = *(entry + 3);
      *(entry + 3) = v26 | 2;
      *(entry + 8) = 0;
      *(entry + 9) = 0;
      *(entry + 10) = 0;
      *(entry + 6) = 0u;
      *(entry + 7) = 0u;
      v27 = v26 | 0xDC2;
      v48 = 0u;
    }

    *(entry + 8) = v48;
    *(entry + 3) = v27 | 0x1000;
    memcpy(&entry[*(entry + 5)], uTF8String, v19);
    entry[*(entry + 5) + v19] = 0;
    *(entry + 15) = 0;
    if (!v13 || ([v13 attributes], v47 != 2) && (objc_msgSend(v13, "attributes"), (v46 & 0x20) == 0))
    {
      *(entry + 15) |= 0x10000u;
    }

    WeakRetained = objc_loadWeakRetained(&self->_dnp);
    v29 = [WeakRetained mp];
    v30 = v29;
    if (v29)
    {
      [v29 shareInfo];

      if ((BYTE8(v32) & 0x10) != 0)
      {
        if (!v13)
        {
          goto LABEL_56;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
    }

    if (!v13)
    {
LABEL_56:
      *(entry + 3) |= 0x20uLL;
LABEL_57:
      v22 = 0;
      *written = v20;
      goto LABEL_58;
    }

    [v13 attributes];
    if (v45 == 2)
    {
LABEL_49:
      [v13 attributes];
      if ((v43 & 2) != 0)
      {
        *(entry + 15) |= 0x8000u;
      }

      [v13 attributes];
      if ((v42 & 4) != 0)
      {
        [v13 attributes];
        if (v41 == -2147483618)
        {
          [v13 attributes];
          if ((v40 & 0x40) != 0 || ([v13 attributes], (v39 & 0x12) != 0))
          {
            *(entry + 15) |= 0x40000000u;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_47:
    [v13 attributes];
    if (v44)
    {
      *(entry + 15) |= 2u;
    }

    goto LABEL_49;
  }

  if (((v18 + 29) & 0xFFF8uLL) <= len)
  {
    v20 = (v18 + 29) & 0xFFF8;
    if (v13)
    {
      [v13 attributes];
      v21 = v38;
    }

    else
    {
      v21 = 0;
    }

    *entry = v21;
    *(entry + 1) = self->_entryIndex + 1;
    *(entry + 8) = v20;
    *(entry + 9) = v19;
    entry[20] = v15;
    v24 = entry + 21;
    memcpy(v24, uTF8String, v19);
    v24[v19] = 0;
    goto LABEL_57;
  }

LABEL_22:
  v22 = 55;
LABEL_58:

  return v22;
}

- (void)getEntriesInBuffer:(char *)buffer BufferLen:(unint64_t)len CookieIn:(unint64_t)in VerifyIn:(unint64_t)verifyIn IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler
{
  handlerCopy = handler;
  dirEnumerationSyncQueue = [(dirEnumerator *)self dirEnumerationSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B40;
  block[3] = &unk_10008C7E0;
  bufferCopy = buffer;
  lenCopy = len;
  inCopy = in;
  verifyInCopy = verifyIn;
  attrCopy = attr;
  block[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  dispatch_async(dirEnumerationSyncQueue, block);
}

- (void)processNextEntry:(unsigned int)entry inbufPtr:(char *)ptr prevEntry:(void *)prevEntry inbufRemain:(unint64_t)remain bytesFilled:(unsigned int)filled IsReadDirAttr:(BOOL)attr CompletionHandler:(id)handler
{
  handlerCopy = handler;
  dirEnumerationSyncQueue = [(dirEnumerator *)self dirEnumerationSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003F60;
  block[3] = &unk_10008C7E0;
  attrCopy = attr;
  block[4] = self;
  v20 = handlerCopy;
  entryCopy = entry;
  filledCopy = filled;
  prevEntryCopy = prevEntry;
  ptrCopy = ptr;
  remainCopy = remain;
  v18 = handlerCopy;
  dispatch_async(dirEnumerationSyncQueue, block);
}

- (smbNode)dnp
{
  WeakRetained = objc_loadWeakRetained(&self->_dnp);

  return WeakRetained;
}

@end