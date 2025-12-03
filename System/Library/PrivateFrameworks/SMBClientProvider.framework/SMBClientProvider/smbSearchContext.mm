@interface smbSearchContext
- (BOOL)checkSearchAborted;
- (BOOL)checkSearchDone;
- (id)makeStandardPath:(id)path;
- (id)parseSearchResults:(id)results;
- (int)doTreeConnect;
- (int)doTreeDisconnect;
- (int)logoutDisconnect;
- (int)parseSearchCriteria:(id)criteria;
- (int)pipeClose:(unsigned int)close;
- (int)pipeOpen:(unsigned int)open;
- (int)pipeTransceive:(unsigned int)transceive DataIn:(id)in DataOut:(id)out;
- (int)pipeWait:(unsigned int)wait;
- (int)pipeWrite:(unsigned int)write WriteData:(id)data;
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
  searchLock = [(smbSearchContext *)self searchLock];
  [searchLock lock];

  LOBYTE(searchLock) = [(smbSearchContext *)self isAborted];
  searchLock2 = [(smbSearchContext *)self searchLock];
  [searchLock2 unlock];

  return searchLock;
}

- (void)setSearchAborted
{
  searchLock = [(smbSearchContext *)self searchLock];
  [searchLock lock];

  self->_isAborted = 1;
  searchLock2 = [(smbSearchContext *)self searchLock];
  [searchLock2 unlock];
}

- (BOOL)checkSearchDone
{
  searchLock = [(smbSearchContext *)self searchLock];
  [searchLock lock];

  LOBYTE(searchLock) = [(smbSearchContext *)self isFinished];
  searchLock2 = [(smbSearchContext *)self searchLock];
  [searchLock2 unlock];

  return searchLock;
}

- (void)setSearchDone
{
  searchLock = [(smbSearchContext *)self searchLock];
  [searchLock lock];

  self->_isFinished = 1;
  searchLock2 = [(smbSearchContext *)self searchLock];
  [searchLock2 unlock];
}

- (int)parseSearchCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v5 = [criteriaCopy objectForKey:LISearchObjTypeReturnAll];
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

  v8 = [criteriaCopy objectForKey:LISearchObjTypeReturnDirs];
  v9 = v8;
  if (v8 && [v8 BOOLValue])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C824();
    }

    self->_searchReturnTypes |= 1u;
  }

  v10 = [criteriaCopy objectForKey:LISearchObjTypeReturnFiles];

  if (v10 && [v10 BOOLValue])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C868();
    }

    self->_searchReturnTypes |= 2u;
  }

  v6 = [criteriaCopy objectForKey:LISearchObjTypeReturnLinks];

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

  v11 = [criteriaCopy objectForKey:LISearchObjXattrsInclude];
  if (!v11)
  {
    v15 = [criteriaCopy objectForKey:LISearchFileNameContains];
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

    v12 = [criteriaCopy objectForKey:LISearchFileNameEndsWith];

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C978();
      }

      [(wspContext *)self->_wctx setFileExtSearch:v12];
      v16 = 1;
    }

    v13 = [criteriaCopy objectForKey:LISearchFileContentsInclude];
    if (v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C9BC();
      }

      [(wspContext *)self->_wctx setContentSearch:v13];
      v16 = 1;
    }

    v17 = [criteriaCopy objectForKey:LISearchObjModifiedAfter];
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
        pipe0 = [(smbSearchContext *)self pipe0];
        v6 = [(smbSearchContext *)self pd];
        [pipe0 setPd:v6];

        pipe02 = [(smbSearchContext *)self pipe0];
        [pipe02 setShareID:self->_treeParam.shareId];

        pipe1 = [(smbSearchContext *)self pipe1];
        v9 = [(smbSearchContext *)self pd];
        [pipe1 setPd:v9];

        pipe12 = [(smbSearchContext *)self pipe1];
        [pipe12 setShareID:self->_treeParam.shareId];

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
    pipe0 = [(smbSearchContext *)self pipe0];
    [pipe0 pipeClose];

    pipe1 = [(smbSearchContext *)self pipe1];
    [pipe1 pipeClose];

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

- (int)pipeOpen:(unsigned int)open
{
  if (open == 1)
  {
    pipe1 = [(smbSearchContext *)self pipe1];
    goto LABEL_5;
  }

  if (!open)
  {
    pipe1 = [(smbSearchContext *)self pipe0];
LABEL_5:
    v4 = pipe1;
    pipeOpen = [pipe1 pipeOpen];

    return pipeOpen;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004F5BC();
  }

  return 22;
}

- (int)pipeWait:(unsigned int)wait
{
  if (self->_treeIsConnected)
  {
    if (wait == 1)
    {
      pipe1 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!wait)
    {
      pipe1 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v5 = pipe1;
      pipeWait = [pipe1 pipeWait];

      return pipeWait;
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

- (int)pipeTransceive:(unsigned int)transceive DataIn:(id)in DataOut:(id)out
{
  inCopy = in;
  outCopy = out;
  if (self->_treeIsConnected)
  {
    if (transceive == 1)
    {
      pipe1 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!transceive)
    {
      pipe1 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v12 = pipe1;
      v11 = [pipe1 pipeTransceive:inCopy DataOut:outCopy];

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

- (int)pipeWrite:(unsigned int)write WriteData:(id)data
{
  dataCopy = data;
  if (self->_treeIsConnected)
  {
    if (write == 1)
    {
      pipe1 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!write)
    {
      pipe1 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v9 = pipe1;
      v8 = [pipe1 pipeWrite:dataCopy];

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

- (int)pipeClose:(unsigned int)close
{
  if (self->_treeIsConnected)
  {
    if (close == 1)
    {
      pipe1 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!close)
    {
      pipe1 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v5 = pipe1;
      pipeClose = [pipe1 pipeClose];

      return pipeClose;
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

- (id)parseSearchResults:(id)results
{
  resultsCopy = results;
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
    obj = [resultsCopy rows];
    v63 = [obj countByEnumeratingWithState:&v64 objects:v103 count:16];
    if (v63)
    {
      v52 = v4;
      v53 = 0;
      v51 = resultsCopy;
      v5 = 0;
      propValue2 = 0;
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
          columns = [v8 columns];
          v13 = [NSNumber numberWithUnsignedInt:12];
          v14 = [columns objectForKey:v13];

          if (v14)
          {
            propValue = [v14 propValue];

            if ([propValue vType] != 31)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                vType = [propValue vType];
                *buf = 67109376;
                *&buf[4] = v5;
                *&buf[8] = 1024;
                *&buf[10] = vType;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, Path property unexpected vType: 0x%x\n", buf, 0xEu);
              }

              goto LABEL_28;
            }

            strValue = [propValue strValue];

            if (!strValue)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004FAF4(&v99, v5, v100);
              }

              v60 = 0;
LABEL_28:
              propValue2 = propValue;
              v7 = v14;
              goto LABEL_39;
            }

            v17 = [(smbSearchContext *)self makeStandardPath:strValue];

            if (!v17)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109378;
                *&buf[4] = v5;
                *&buf[8] = 2112;
                *&buf[10] = strValue;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, unable to standardize path: %@\n", buf, 0x12u);
              }

              v57 = 0;
              propValue2 = propValue;
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
            columns2 = [v8 columns];
            v19 = [NSNumber numberWithUnsignedInt:13];
            v7 = [columns2 objectForKey:v19];

            if (!v7)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004FAB4(&v97, v5, v98);
              }

              v7 = 0;
              propValue2 = propValue;
              goto LABEL_37;
            }

            propValue2 = [v7 propValue];

            if ([propValue2 vType] != 19)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                vType2 = [propValue2 vType];
                *buf = 67109376;
                *&buf[4] = v5;
                *&buf[8] = 1024;
                *&buf[10] = vType2;
                _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "parseSearchResults: row: %u, SystemFileAttributes property unexpected vType: 0x%x\n", buf, 0xEu);
              }

              goto LABEL_37;
            }

            uint4Val = [propValue2 uint4Val];
            if ((uint4Val & 0x10) != 0)
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

              searchReturnTypes = [(smbSearchContext *)self searchReturnTypes];
              *buf = 67109634;
              *&buf[4] = v5;
              *&buf[8] = 1024;
              *&buf[10] = searchReturnTypes;
              *&buf[14] = 2112;
              v24 = v61;
              *&buf[16] = v61;
              v25 = "parseSearchResults: row: %u ReturnTypes: 0x%x, filter out folder type: %@\n";
            }

            else
            {
              v21 = uint4Val;
              searchReturnTypes2 = [(smbSearchContext *)self searchReturnTypes];
              if ((v21 & 0x400) == 0)
              {
                if ((searchReturnTypes2 & 2) == 0)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    searchReturnTypes3 = [(smbSearchContext *)self searchReturnTypes];
                    *buf = 67109634;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = searchReturnTypes3;
                    *&buf[14] = 2112;
                    v24 = v61;
                    *&buf[16] = v61;
                    v25 = "parseSearchResults: row: %u ReturnTypes: 0x%x, filter out file type: %@\n";
                    goto LABEL_62;
                  }

LABEL_37:
                  v57 = v61;
LABEL_38:
                  v60 = strValue;
                  goto LABEL_39;
                }

                v28 = 1;
LABEL_48:
                v58 = v28;
                columns3 = [v8 columns];
                v30 = [NSNumber numberWithUnsignedInt:1];
                v31 = [columns3 objectForKey:v30];

                if (!v31)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004FA74(&v95, v5, v96);
                  }

                  v7 = 0;
                  goto LABEL_37;
                }

                propValue3 = [v31 propValue];

                if ([propValue3 vType] != 64)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    vType3 = [propValue3 vType];
                    *buf = 67109376;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = vType3;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, SystemDateModified property unexpected vType: 0x%x\n", buf, 0xEu);
                  }

                  propValue2 = propValue3;
                  v7 = v31;
                  goto LABEL_37;
                }

                timeSpec = [propValue3 timeSpec];
                v54 = v34;
                v55 = timeSpec;
                columns4 = [v8 columns];
                v36 = [NSNumber numberWithUnsignedInt:15];
                v7 = [columns4 objectForKey:v36];

                if (!v7)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004FA34(&v93, v5, v94);
                  }

                  v7 = 0;
                  propValue2 = propValue3;
                  goto LABEL_37;
                }

                propValue2 = [v7 propValue];

                if ([propValue2 vType] != 64)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    vType4 = [propValue2 vType];
                    *buf = 67109376;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = vType4;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, SystemDateAccessed property unexpected vType: 0x%x\n", buf, 0xEu);
                  }

                  goto LABEL_37;
                }

                timeSpec2 = [propValue2 timeSpec];
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
                v82 = timeSpec2;
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

              if ((searchReturnTypes2 & 3) != 0)
              {
                v28 = 3;
                goto LABEL_48;
              }

              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_37;
              }

              searchReturnTypes4 = [(smbSearchContext *)self searchReturnTypes];
              *buf = 67109634;
              *&buf[4] = v5;
              *&buf[8] = 1024;
              *&buf[10] = searchReturnTypes4;
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

          resultsCopy = v51;
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
    propValue2 = 0;
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
    propValue2 = 0;
    v46 = 0;
  }

  v49 = 0;
LABEL_78:

  return v49;
}

- (id)makeStandardPath:(id)path
{
  pathComponents = [path pathComponents];
  if ([pathComponents count] < 4)
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
      v5 = [pathComponents objectAtIndex:v7];

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

    while ([pathComponents count] > v6++);
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