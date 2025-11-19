@interface smbSearchContext
- (BOOL)checkSearchAborted;
- (BOOL)checkSearchDone;
- (id)makeStandardPath:(id)a3;
- (id)parseSearchResults:(id)a3;
- (int)doTreeConnect;
- (int)doTreeDisconnect;
- (int)logoutDisconnect;
- (int)parseSearchCriteria:(id)a3;
- (int)pipeClose:(unsigned int)a3;
- (int)pipeOpen:(unsigned int)a3;
- (int)pipeTransceive:(unsigned int)a3 DataIn:(id)a4 DataOut:(id)a5;
- (int)pipeWait:(unsigned int)a3;
- (int)pipeWrite:(unsigned int)a3 WriteData:(id)a4;
- (smbSearchContext)init;
- (void)logConfig;
- (void)setSearchAborted;
- (void)setSearchDone;
@end

@implementation smbSearchContext

- (smbSearchContext)init
{
  v17.receiver = self;
  v17.super_class = smbSearchContext;
  v2 = [(smbSearchContext *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    searchLock = v2->_searchLock;
    v2->_searchLock = v3;

    searchToken = v2->_searchToken;
    v2->_searchToken = 0;

    searchCriteria = v2->_searchCriteria;
    v2->_searchCriteria = 0;

    handler = v2->_handler;
    v2->_handler = 0;

    wctx = v2->_wctx;
    v2->_wctx = 0;

    v2->_isAborted = 0;
    v2->_searchReturnTypes = 0;
    v2->_treeIsConnected = 0;
    searchRows = v2->_searchRows;
    v2->_searchRows = 0;

    v10 = [[NSMutableData alloc] initWithCapacity:0x4000];
    replyData = v2->_replyData;
    v2->_replyData = v10;

    if (!v2->_replyData)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004C760();
      }

      goto LABEL_11;
    }

    v12 = [[pipeChannel alloc] initWithName:@"MsFteWds" Channel:0];
    pipe0 = v2->_pipe0;
    v2->_pipe0 = v12;

    if (!v2->_pipe0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004C71C();
      }

      goto LABEL_11;
    }

    v14 = [[pipeChannel alloc] initWithName:@"MsFteWds" Channel:1];
    pipe1 = v2->_pipe1;
    v2->_pipe1 = v14;

    if (!v2->_pipe1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004C6D8();
      }

LABEL_11:

      return 0;
    }
  }

  return v2;
}

- (BOOL)checkSearchAborted
{
  v3 = [(smbSearchContext *)self searchLock];
  [v3 lock];

  LOBYTE(v3) = [(smbSearchContext *)self isAborted];
  v4 = [(smbSearchContext *)self searchLock];
  [v4 unlock];

  return v3;
}

- (void)setSearchAborted
{
  v3 = [(smbSearchContext *)self searchLock];
  [v3 lock];

  self->_isAborted = 1;
  v4 = [(smbSearchContext *)self searchLock];
  [v4 unlock];
}

- (BOOL)checkSearchDone
{
  v3 = [(smbSearchContext *)self searchLock];
  [v3 lock];

  LOBYTE(v3) = [(smbSearchContext *)self isFinished];
  v4 = [(smbSearchContext *)self searchLock];
  [v4 unlock];

  return v3;
}

- (void)setSearchDone
{
  v3 = [(smbSearchContext *)self searchLock];
  [v3 lock];

  self->_isFinished = 1;
  v4 = [(smbSearchContext *)self searchLock];
  [v4 unlock];
}

- (int)parseSearchCriteria:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:LISearchObjTypeReturnAll];
  if (v5)
  {
    v6 = v5;
    if (![v5 BOOLValue])
    {
      goto LABEL_22;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C7E0();
    }

    v7 = 3;
    goto LABEL_21;
  }

  v8 = [v4 objectForKey:LISearchObjTypeReturnDirs];
  v9 = v8;
  if (v8 && [v8 BOOLValue])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C824();
    }

    self->_searchReturnTypes |= 1u;
  }

  v10 = [v4 objectForKey:LISearchObjTypeReturnFiles];

  if (v10 && [v10 BOOLValue])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C868();
    }

    self->_searchReturnTypes |= 2u;
  }

  v6 = [v4 objectForKey:LISearchObjTypeReturnLinks];

  if (v6 && [v6 BOOLValue])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C8AC();
    }

    v7 = self->_searchReturnTypes | 3;
LABEL_21:
    self->_searchReturnTypes = v7;
  }

LABEL_22:
  if (!self->_searchReturnTypes)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CAC0();
    }

    v13 = 0;
    v12 = 0;
    goto LABEL_30;
  }

  v11 = [v4 objectForKey:LISearchObjXattrsInclude];
  if (!v11)
  {
    v15 = [v4 objectForKey:LISearchFileNameContains];
    if (v15)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C934();
      }

      [(wspContext *)self->_wctx setFilenameSearch:v15];
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v12 = [v4 objectForKey:LISearchFileNameEndsWith];

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C978();
      }

      [(wspContext *)self->_wctx setFileExtSearch:v12];
      v16 = 1;
    }

    v13 = [v4 objectForKey:LISearchFileContentsInclude];
    if (v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C9BC();
      }

      [(wspContext *)self->_wctx setContentSearch:v13];
      v16 = 1;
    }

    v17 = [v4 objectForKey:LISearchObjModifiedAfter];
    if (v17)
    {
      v18 = v17;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004CA00();
      }

      [(wspContext *)self->_wctx setModDate:v18];

      goto LABEL_49;
    }

    if (v16)
    {
LABEL_49:
      v14 = 0;
      goto LABEL_50;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CA7C();
    }

LABEL_30:
    v14 = 22;
    goto LABEL_50;
  }

  v12 = v11;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004C8F0();
  }

  v13 = 0;
  v14 = 45;
LABEL_50:

  return v14;
}

- (int)doTreeConnect
{
  if (self->_pd)
  {
    if (self->_treeIsConnected)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004CB7C();
      }

      return 37;
    }

    else
    {
      v4 = [smb_subr sendTreeConnect:"sendTreeConnect:ShareName:Param:" ShareName:? Param:?];
      if (v4)
      {
        v3 = v4;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004CB04();
        }
      }

      else
      {
        v5 = [(smbSearchContext *)self pipe0];
        v6 = [(smbSearchContext *)self pd];
        [v5 setPd:v6];

        v7 = [(smbSearchContext *)self pipe0];
        [v7 setShareID:self->_treeParam.shareId];

        v8 = [(smbSearchContext *)self pipe1];
        v9 = [(smbSearchContext *)self pd];
        [v8 setPd:v9];

        v10 = [(smbSearchContext *)self pipe1];
        [v10 setShareID:self->_treeParam.shareId];

        v3 = 0;
        self->_treeIsConnected = 1;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CBC0();
    }

    return 22;
  }

  return v3;
}

- (int)logoutDisconnect
{
  if (self->_treeIsConnected)
  {
    [(smbSearchContext *)self doTreeDisconnect];
    return 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CC04();
    }

    return 57;
  }
}

- (int)doTreeDisconnect
{
  if (self->_treeIsConnected)
  {
    v3 = [(smbSearchContext *)self pipe0];
    [v3 pipeClose];

    v4 = [(smbSearchContext *)self pipe1];
    [v4 pipeClose];

    self->_treeIsConnected = 0;
    v5 = [smb_subr sendTreeDisonnect:self->_pd ShareID:self->_treeParam.shareId Param:&self->_treeParam];
    if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CC48();
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CCC0();
    }

    return 37;
  }

  return v5;
}

- (int)pipeOpen:(unsigned int)a3
{
  if (a3 == 1)
  {
    v3 = [(smbSearchContext *)self pipe1];
    goto LABEL_5;
  }

  if (!a3)
  {
    v3 = [(smbSearchContext *)self pipe0];
LABEL_5:
    v4 = v3;
    v5 = [v3 pipeOpen];

    return v5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004F5BC();
  }

  return 22;
}

- (int)pipeWait:(unsigned int)a3
{
  if (self->_treeIsConnected)
  {
    if (a3 == 1)
    {
      v3 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!a3)
    {
      v3 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v5 = v3;
      v6 = [v3 pipeWait];

      return v6;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F634();
    }

    return 22;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F6AC();
    }

    return 9;
  }
}

- (int)pipeTransceive:(unsigned int)a3 DataIn:(id)a4 DataOut:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (self->_treeIsConnected)
  {
    if (a3 == 1)
    {
      v10 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!a3)
    {
      v10 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v12 = v10;
      v11 = [v10 pipeTransceive:v8 DataOut:v9];

      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F724();
    }

    v11 = 22;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F79C();
    }

    v11 = 9;
  }

LABEL_13:

  return v11;
}

- (int)pipeWrite:(unsigned int)a3 WriteData:(id)a4
{
  v6 = a4;
  if (self->_treeIsConnected)
  {
    if (a3 == 1)
    {
      v7 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!a3)
    {
      v7 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v9 = v7;
      v8 = [v7 pipeWrite:v6];

      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F814();
    }

    v8 = 22;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F88C();
    }

    v8 = 9;
  }

LABEL_13:

  return v8;
}

- (int)pipeClose:(unsigned int)a3
{
  if (self->_treeIsConnected)
  {
    if (a3 == 1)
    {
      v3 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!a3)
    {
      v3 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v5 = v3;
      v6 = [v3 pipeClose];

      return v6;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F904();
    }

    return 22;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F97C();
    }

    return 9;
  }
}

- (id)parseSearchResults:(id)a3
{
  v3 = a3;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  v4 = objc_alloc_init(NSMutableArray);
  if (v4)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = [v3 rows];
    v63 = [obj countByEnumeratingWithState:&v64 objects:v103 count:16];
    if (v63)
    {
      v52 = v4;
      v53 = 0;
      v51 = v3;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v57 = 0;
      v60 = 0;
      v62 = *v65;
      while (1)
      {
        v9 = 0;
        do
        {
          v10 = v8;
          if (*v65 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v64 + 1) + 8 * v9);

          v11 = objc_autoreleasePoolPush();
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0;
          v12 = [v8 columns];
          v13 = [NSNumber numberWithUnsignedInt:12];
          v14 = [v12 objectForKey:v13];

          if (v14)
          {
            v15 = [v14 propValue];

            if ([v15 vType] != 31)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v26 = [v15 vType];
                *buf = 67109376;
                *&buf[4] = v5;
                *&buf[8] = 1024;
                *&buf[10] = v26;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, Path property unexpected vType: 0x%x\n", buf, 0xEu);
              }

              goto LABEL_28;
            }

            v16 = [v15 strValue];

            if (!v16)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004FAF4(&v99, v5, v100);
              }

              v60 = 0;
LABEL_28:
              v6 = v15;
              v7 = v14;
              goto LABEL_39;
            }

            v17 = [(smbSearchContext *)self makeStandardPath:v16];

            if (!v17)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109378;
                *&buf[4] = v5;
                *&buf[8] = 2112;
                *&buf[10] = v16;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, unable to standardize path: %@\n", buf, 0x12u);
              }

              v57 = 0;
              v6 = v15;
              v7 = v14;
              goto LABEL_38;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109378;
              *&buf[4] = v5;
              *&buf[8] = 2112;
              *&buf[10] = v17;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Parsing row: %u, path: %@\n", buf, 0x12u);
            }

            v61 = v17;
            v18 = [v8 columns];
            v19 = [NSNumber numberWithUnsignedInt:13];
            v7 = [v18 objectForKey:v19];

            if (!v7)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004FAB4(&v97, v5, v98);
              }

              v7 = 0;
              v6 = v15;
              goto LABEL_37;
            }

            v6 = [v7 propValue];

            if ([v6 vType] != 19)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                v42 = [v6 vType];
                *buf = 67109376;
                *&buf[4] = v5;
                *&buf[8] = 1024;
                *&buf[10] = v42;
                _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "parseSearchResults: row: %u, SystemFileAttributes property unexpected vType: 0x%x\n", buf, 0xEu);
              }

              goto LABEL_37;
            }

            v20 = [v6 uint4Val];
            if ((v20 & 0x10) != 0)
            {
              if (([(smbSearchContext *)self searchReturnTypes]& 1) != 0)
              {
                v28 = 2;
                goto LABEL_48;
              }

              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_37;
              }

              v27 = [(smbSearchContext *)self searchReturnTypes];
              *buf = 67109634;
              *&buf[4] = v5;
              *&buf[8] = 1024;
              *&buf[10] = v27;
              *&buf[14] = 2112;
              v24 = v61;
              *&buf[16] = v61;
              v25 = "parseSearchResults: row: %u ReturnTypes: 0x%x, filter out folder type: %@\n";
            }

            else
            {
              v21 = v20;
              v22 = [(smbSearchContext *)self searchReturnTypes];
              if ((v21 & 0x400) == 0)
              {
                if ((v22 & 2) == 0)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    v23 = [(smbSearchContext *)self searchReturnTypes];
                    *buf = 67109634;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = v23;
                    *&buf[14] = 2112;
                    v24 = v61;
                    *&buf[16] = v61;
                    v25 = "parseSearchResults: row: %u ReturnTypes: 0x%x, filter out file type: %@\n";
                    goto LABEL_62;
                  }

LABEL_37:
                  v57 = v61;
LABEL_38:
                  v60 = v16;
                  goto LABEL_39;
                }

                v28 = 1;
LABEL_48:
                v58 = v28;
                v29 = [v8 columns];
                v30 = [NSNumber numberWithUnsignedInt:1];
                v31 = [v29 objectForKey:v30];

                if (!v31)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004FA74(&v95, v5, v96);
                  }

                  v7 = 0;
                  goto LABEL_37;
                }

                v32 = [v31 propValue];

                if ([v32 vType] != 64)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v44 = [v32 vType];
                    *buf = 67109376;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = v44;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, SystemDateModified property unexpected vType: 0x%x\n", buf, 0xEu);
                  }

                  v6 = v32;
                  v7 = v31;
                  goto LABEL_37;
                }

                v33 = [v32 timeSpec];
                v54 = v34;
                v55 = v33;
                v35 = [v8 columns];
                v36 = [NSNumber numberWithUnsignedInt:15];
                v7 = [v35 objectForKey:v36];

                if (!v7)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004FA34(&v93, v5, v94);
                  }

                  v7 = 0;
                  v6 = v32;
                  goto LABEL_37;
                }

                v6 = [v7 propValue];

                if ([v6 vType] != 64)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v43 = [v6 vType];
                    *buf = 67109376;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = v43;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, SystemDateAccessed property unexpected vType: 0x%x\n", buf, 0xEu);
                  }

                  goto LABEL_37;
                }

                v37 = [v6 timeSpec];
                v39 = v38;
                v40 = objc_alloc_init(searchResultItem);

                if (!v40)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004F9F4(&v91, v5, v92);
                  }

                  v53 = 0;
                  goto LABEL_37;
                }

                *buf = xmmword_10006D4A0;
                *&buf[16] = 0;
                v77 = v58;
                v78 = 511;
                v79 = v73;
                v80 = v74;
                v81 = v75;
                v82 = v37;
                v83 = v39;
                v84 = v55;
                v85 = v54;
                v90 = v72;
                v88 = v70;
                v89 = v71;
                v86 = v68;
                v87 = v69;
                [(searchResultItem *)v40 setLiAttr:buf];
                [(searchResultItem *)v40 setPath:v61];
                [v52 addObject:v40];
                v53 = v40;
                v57 = v61;
                goto LABEL_38;
              }

              if ((v22 & 3) != 0)
              {
                v28 = 3;
                goto LABEL_48;
              }

              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_37;
              }

              v41 = [(smbSearchContext *)self searchReturnTypes];
              *buf = 67109634;
              *&buf[4] = v5;
              *&buf[8] = 1024;
              *&buf[10] = v41;
              *&buf[14] = 2112;
              v24 = v61;
              *&buf[16] = v61;
              v25 = "parseSearchResults: row: %u ReturnTypes: 0x%x, filter out reparse type: %@\n";
            }

LABEL_62:
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v25, buf, 0x18u);
            v57 = v24;
            goto LABEL_38;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10004FB34(&v101, v5, &v102);
          }

          v7 = 0;
LABEL_39:
          ++v5;
          objc_autoreleasePoolPop(v11);
          v9 = v9 + 1;
        }

        while (v63 != v9);
        v45 = [obj countByEnumeratingWithState:&v64 objects:v103 count:16];
        v63 = v45;
        if (!v45)
        {

          v3 = v51;
          v4 = v52;
          v46 = v53;
          v47 = v57;
          v48 = v60;
          goto LABEL_75;
        }
      }
    }

    v48 = 0;
    v47 = 0;
    v7 = 0;
    v6 = 0;
    v46 = 0;
LABEL_75:

    if ([v4 count])
    {
      v49 = v4;
      goto LABEL_78;
    }
  }

  else
  {
    v48 = 0;
    v47 = 0;
    v7 = 0;
    v6 = 0;
    v46 = 0;
  }

  v49 = 0;
LABEL_78:

  return v49;
}

- (id)makeStandardPath:(id)a3
{
  v3 = [a3 pathComponents];
  if ([v3 count] < 4)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 4;
    v7 = 3;
    do
    {
      v8 = v5;
      v5 = [v3 objectAtIndex:v7];

      if (v4)
      {
        v9 = [v4 stringByAppendingString:@"/"];

        v4 = [v9 stringByAppendingString:v5];
      }

      else
      {
        v4 = v5;
      }

      v7 = v6;
    }

    while ([v3 count] > v6++);
  }

  return v4;
}

- (void)logConfig
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10004FB74(self);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10004FBF4(self);
  }

  [(wspContext *)self->_wctx logContents];
}

@end