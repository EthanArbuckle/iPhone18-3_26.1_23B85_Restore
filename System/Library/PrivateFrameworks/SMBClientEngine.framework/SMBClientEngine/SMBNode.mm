@interface SMBNode
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)fid;
- (id)init:(id)init;
- (int)cmpdAddClose:(smb_close *)close withFlags:(unsigned __int16)flags;
- (int)cmpdAddCreate:(smb_create *)create withName:(id)name withStreamName:(id)streamName;
- (int)cmpdAddIoctl:(smb_ioctl *)ioctl getReparsePoint:(id)point;
- (int)cmpdAddIoctl:(smb_ioctl *)ioctl pipeTransceive:(id)transceive withRecvData:(id)data;
- (int)cmpdAddIoctl:(smb_ioctl *)ioctl setReparsePoint:(id)point;
- (int)cmpdAddQueryDirectory:(smb_query_dir *)directory onDir:(id)dir returnDataIn:(id)in;
- (int)cmpdAddQueryInformation:(smb_query_info *)information withStreamName:(id)name forFileAllInfo:(id)info withInputBuffer:(id)buffer withOutputBuffer:(id)outputBuffer;
- (int)cmpdAddRead:(smb_read_write *)read intoBuffer:(id)buffer;
- (int)cmpdAddSetInformation:(smb_setinfo *)information withInputBuffer:(id)buffer withRenameTarget:(id)target;
- (int)cmpdAddWrite:(smb_read_write *)write fromBuffer:(id)buffer;
- (int)cmpdParseClose:(smb_close *)close withFlags:(unsigned __int16)flags;
- (int)cmpdParseCreate:(smb_create *)create;
- (int)cmpdParseIoctl:(smb_ioctl *)ioctl reparsePoint:(id)point sendInputBuffer:(id)buffer rcvOutputBuffer:(id)outputBuffer;
- (int)cmpdParseQueryDirectory:(smb_query_dir *)directory returnDataIn:(id)in;
- (int)cmpdParseQueryInformation:(smb_query_info *)information withStreamName:(id)name forFileAllInfo:(id)info withOutputBuffer:(id)buffer;
- (int)cmpdParseRead:(smb_read_write *)read intoBuffer:(id)buffer;
- (int)cmpdParseSetInformation:(smb_setinfo *)information;
- (int)cmpdParseWrite:(smb_read_write *)write;
- (int)parseNextHeader:(unsigned __int16)header retNTStatus:(unsigned int *)status retMdpp:(mdchain *)mdpp;
- (int)resetCmpdRequest;
- (int)updateCmpdHdr;
- (void)dealloc;
- (void)resetCmpdRequest;
- (void)sendCmpdRequest:(id)request;
- (void)updateCmpdHdr;
@end

@implementation SMBNode

- (id)init:(id)init
{
  initCopy = init;
  v9.receiver = self;
  v9.super_class = SMBNode;
  v5 = [(SMBNode *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SMBNode *)v5 setPd:initCopy];
    v7 = v6;
  }

  return v6;
}

uint64_t __82__SMBNode_nodeWithParameters_onPiston_onShareID_withName_withStreamName_callBack___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    v4 = *(a1 + 32);
  }

  return (*(v3 + 16))();
}

- (int)cmpdAddCreate:(smb_create *)create withName:(id)name withStreamName:(id)streamName
{
  nameCopy = name;
  streamNameCopy = streamName;
  if (!self->_isCmpd)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddCreate:withName:withStreamName:];
    }

    goto LABEL_7;
  }

  if (self->_marshallPos >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddCreate:withName:withStreamName:];
    }

LABEL_7:
    v10 = 12;
    goto LABEL_8;
  }

  [(SMBNode *)self setName:nameCopy];
  [(SMBNode *)self setStreamName:streamNameCopy];
  v17 = 0;
  v10 = smb2_smb_create(self, create, 0, &v17, 0);
  v12 = v17;
  v13 = v12;
  if (v10 || !v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddCreate:withName:withStreamName:];
    }
  }

  else
  {
    v14 = &self->super.isa + self->_marshallPos;
    v15 = v14[1];
    v14[1] = v12;
    v16 = v12;

    [(SMBNode *)self updateCmpdHdr];
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (int)cmpdParseCreate:(smb_create *)create
{
  v7 = 0;
  v6 = 0;
  result = [(SMBNode *)self parseNextHeader:5 retNTStatus:&v7 retMdpp:&v6];
  create->var10 = v7;
  if (!result)
  {
    result = smb2_smb_parse_create(self, v6, create, 0);
    if (!result)
    {
      [(SMBNode *)self setFid:create->var22.var0, create->var22.var1];
      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  memset(v12, 0, sizeof(v12));
  if (self->_isOpen)
  {
    pd = self->_pd;
    if (pd)
    {
      sock = [(SMBPiston *)pd sock];
      if (sock)
      {
        v5 = sock;
        sock2 = [(SMBPiston *)self->_pd sock];
        writeEnabled = [sock2 writeEnabled];

        if (writeEnabled == 1)
        {
          [(SMBNode *)self close:v12 withFlags:0 callBack:0];
        }
      }
    }
  }

  if (self->_isCmpd)
  {
    for (i = 8; i != 48; i += 8)
    {
      v9 = *(&self->super.isa + i);
      if (v9)
      {
        [v9 smb_rq_done];
        v10 = *(&self->super.isa + i);
        *(&self->super.isa + i) = 0;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = SMBNode;
  [(SMBNode *)&v11 dealloc];
}

- (int)cmpdAddClose:(smb_close *)close withFlags:(unsigned __int16)flags
{
  if (!self->_isCmpd)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddClose:withFlags:];
    }

    return 12;
  }

  if (self->_marshallPos >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddClose:withFlags:];
    }

    return 12;
  }

  v12 = 0;
  v5 = smb2_smb_close(self, flags, close, &v12, 0);
  v7 = v12;
  v8 = v7;
  if (v5 || !v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddClose:withFlags:];
    }
  }

  else
  {
    v9 = &self->super.isa + self->_marshallPos;
    v10 = v9[1];
    v9[1] = v7;
    v11 = v7;

    [(SMBNode *)self updateCmpdHdr];
    return 0;
  }

  return v5;
}

- (int)cmpdParseClose:(smb_close *)close withFlags:(unsigned __int16)flags
{
  flagsCopy = flags;
  v9 = 0;
  v8 = 0;
  result = [(SMBNode *)self parseNextHeader:6 retNTStatus:&v9 retMdpp:&v8];
  close->var0 = v9;
  if (!result)
  {
    result = smb2_smb_parse_close(v8, flagsCopy & 1, close);
    if (!result)
    {
      [(SMBNode *)self setIsOpen:0];
      return 0;
    }
  }

  return result;
}

- (int)cmpdAddRead:(smb_read_write *)read intoBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (!self->_isCmpd)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddRead:intoBuffer:];
    }

    goto LABEL_7;
  }

  if (self->_marshallPos >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddRead:intoBuffer:];
    }

LABEL_7:
    v7 = 12;
    goto LABEL_8;
  }

  v14 = 0;
  v7 = smb2_smb_read_one(self, read, bufferCopy, &v14, 0);
  v9 = v14;
  v10 = v9;
  if (v7 || !v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddRead:intoBuffer:];
    }
  }

  else
  {
    v11 = &self->super.isa + self->_marshallPos;
    v12 = v11[1];
    v11[1] = v9;
    v13 = v9;

    [(SMBNode *)self updateCmpdHdr];
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (int)cmpdParseRead:(smb_read_write *)read intoBuffer:(id)buffer
{
  bufferCopy = buffer;
  v10 = 0;
  v9 = 0;
  one = [(SMBNode *)self parseNextHeader:8 retNTStatus:&v10 retMdpp:&v9];
  read->var4 = v10;
  if (!one)
  {
    one = smb2_smb_parse_read_one(v9, read);
  }

  return one;
}

- (int)cmpdAddWrite:(smb_read_write *)write fromBuffer:(id)buffer
{
  bufferCopy = buffer;
  if (!self->_isCmpd)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddWrite:fromBuffer:];
    }

    goto LABEL_7;
  }

  if (self->_marshallPos >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddWrite:fromBuffer:];
    }

LABEL_7:
    v7 = 12;
    goto LABEL_8;
  }

  v14 = 0;
  v7 = smb2_smb_write_one(self, write, bufferCopy, &v14, 0);
  v9 = v14;
  v10 = v9;
  if (v7 || !v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddWrite:fromBuffer:];
    }
  }

  else
  {
    v11 = &self->super.isa + self->_marshallPos;
    v12 = v11[1];
    v11[1] = v9;
    v13 = v9;

    [(SMBNode *)self updateCmpdHdr];
    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (int)cmpdParseWrite:(smb_read_write *)write
{
  v6 = 0;
  v5 = 0;
  result = [(SMBNode *)self parseNextHeader:9 retNTStatus:&v6 retMdpp:&v5];
  write->var4 = v6;
  if (!result)
  {
    return smb2_smb_parse_write_one(v5, write);
  }

  return result;
}

- (int)cmpdAddIoctl:(smb_ioctl *)ioctl getReparsePoint:(id)point
{
  pointCopy = point;
  if (!self->_isCmpd)
  {
    self->_isCmpd = 1;
  }

  if (self->_marshallPos < 5)
  {
    v14 = 0;
    v7 = smb2_smb_ioctl(0, self, 0, ioctl, pointCopy, 0, 0, 0, 0, &v14, 0);
    v8 = v14;
    v9 = v8;
    if (v7 || !v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBNode cmpdAddIoctl:getReparsePoint:];
      }
    }

    else
    {
      v10 = &self->super.isa + self->_marshallPos;
      v11 = v10[1];
      v10[1] = v8;
      v12 = v8;

      [(SMBNode *)self updateCmpdHdr];
      v7 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddIoctl:getReparsePoint:];
    }

    v7 = 12;
  }

  return v7;
}

- (int)cmpdAddIoctl:(smb_ioctl *)ioctl setReparsePoint:(id)point
{
  pointCopy = point;
  if (!self->_isCmpd)
  {
    self->_isCmpd = 1;
  }

  if (self->_marshallPos < 5)
  {
    v14 = 0;
    v7 = smb2_smb_ioctl(0, self, 0, ioctl, pointCopy, 0, 0, 0, 0, &v14, 0);
    v8 = v14;
    v9 = v8;
    if (v7 || !v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBNode cmpdAddIoctl:setReparsePoint:];
      }
    }

    else
    {
      v10 = &self->super.isa + self->_marshallPos;
      v11 = v10[1];
      v10[1] = v8;
      v12 = v8;

      [(SMBNode *)self updateCmpdHdr];
      v7 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddIoctl:setReparsePoint:];
    }

    v7 = 12;
  }

  return v7;
}

- (int)cmpdAddIoctl:(smb_ioctl *)ioctl pipeTransceive:(id)transceive withRecvData:(id)data
{
  transceiveCopy = transceive;
  dataCopy = data;
  if (!self->_isCmpd)
  {
    self->_isCmpd = 1;
  }

  if (self->_marshallPos < 5)
  {
    v17 = 0;
    v10 = smb2_smb_ioctl(0, self, 0, ioctl, 0, transceiveCopy, dataCopy, 0, 0, &v17, 0);
    v11 = v17;
    v12 = v11;
    if (v10 || !v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBNode cmpdAddIoctl:pipeTransceive:withRecvData:];
      }
    }

    else
    {
      v13 = &self->super.isa + self->_marshallPos;
      v14 = v13[1];
      v13[1] = v11;
      v15 = v11;

      [(SMBNode *)self updateCmpdHdr];
      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddIoctl:pipeTransceive:withRecvData:];
    }

    v10 = 12;
  }

  return v10;
}

- (int)cmpdParseIoctl:(smb_ioctl *)ioctl reparsePoint:(id)point sendInputBuffer:(id)buffer rcvOutputBuffer:(id)outputBuffer
{
  pointCopy = point;
  bufferCopy = buffer;
  outputBufferCopy = outputBuffer;
  v16 = 0;
  v15 = 0;
  v13 = [(SMBNode *)self parseNextHeader:11 retNTStatus:&v16 retMdpp:&v15];
  ioctl->var3 = v16;
  if (!v13)
  {
    v13 = smb2_smb_parse_ioctl(self, v15, ioctl, pointCopy, bufferCopy, outputBufferCopy);
  }

  return v13;
}

- (int)cmpdAddQueryDirectory:(smb_query_dir *)directory onDir:(id)dir returnDataIn:(id)in
{
  dirCopy = dir;
  inCopy = in;
  if (!self->_isCmpd)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddQueryDirectory:onDir:returnDataIn:];
    }

    goto LABEL_7;
  }

  if (self->_marshallPos >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddQueryDirectory:onDir:returnDataIn:];
    }

LABEL_7:
    v10 = 12;
    goto LABEL_8;
  }

  v17 = 0;
  v10 = smb2_smb_query_dir(self, directory, dirCopy, inCopy, 0, &v17, 0);
  v12 = v17;
  v13 = v12;
  if (v10 || !v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddQueryDirectory:onDir:returnDataIn:];
    }
  }

  else
  {
    v14 = &self->super.isa + self->_marshallPos;
    v15 = v14[1];
    v14[1] = v12;
    v16 = v12;

    [(SMBNode *)self updateCmpdHdr];
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (int)cmpdParseQueryDirectory:(smb_query_dir *)directory returnDataIn:(id)in
{
  inCopy = in;
  v10 = 0;
  v9 = 0;
  dir = [(SMBNode *)self parseNextHeader:14 retNTStatus:&v10 retMdpp:&v9];
  directory->ntStatus = v10;
  if (!dir)
  {
    dir = smb2_smb_parse_query_dir(v9, directory, inCopy, 0);
  }

  return dir;
}

- (int)cmpdAddQueryInformation:(smb_query_info *)information withStreamName:(id)name forFileAllInfo:(id)info withInputBuffer:(id)buffer withOutputBuffer:(id)outputBuffer
{
  nameCopy = name;
  infoCopy = info;
  bufferCopy = buffer;
  outputBufferCopy = outputBuffer;
  if (!self->_isCmpd)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddQueryInformation:withStreamName:forFileAllInfo:withInputBuffer:withOutputBuffer:];
    }

    goto LABEL_7;
  }

  if (self->_marshallPos >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddQueryInformation:withStreamName:forFileAllInfo:withInputBuffer:withOutputBuffer:];
    }

LABEL_7:
    v16 = 12;
    goto LABEL_8;
  }

  v23 = 0;
  v16 = smb2_smb_query_info(self, &information->var0, nameCopy, infoCopy, bufferCopy, outputBufferCopy, &v23, 0);
  v18 = v23;
  v19 = v18;
  if (v16 || !v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddQueryInformation:withStreamName:forFileAllInfo:withInputBuffer:withOutputBuffer:];
    }
  }

  else
  {
    v20 = &self->super.isa + self->_marshallPos;
    v21 = v20[1];
    v20[1] = v18;
    v22 = v18;

    [(SMBNode *)self updateCmpdHdr];
    v16 = 0;
  }

LABEL_8:

  return v16;
}

- (int)cmpdParseQueryInformation:(smb_query_info *)information withStreamName:(id)name forFileAllInfo:(id)info withOutputBuffer:(id)buffer
{
  nameCopy = name;
  infoCopy = info;
  bufferCopy = buffer;
  v16 = 0;
  v15 = 0;
  info = [(SMBNode *)self parseNextHeader:16 retNTStatus:&v16 retMdpp:&v15];
  information->var4 = v16;
  if (!info)
  {
    info = smb2_smb_parse_query_info(self, v15, &information->var0, nameCopy, infoCopy, bufferCopy);
  }

  return info;
}

- (int)cmpdAddSetInformation:(smb_setinfo *)information withInputBuffer:(id)buffer withRenameTarget:(id)target
{
  bufferCopy = buffer;
  targetCopy = target;
  if (!self->_isCmpd)
  {
    self->_isCmpd = 1;
  }

  if (self->_marshallPos < 5)
  {
    v17 = 0;
    v10 = smb2_smb_set_info(self, information, bufferCopy, targetCopy, &v17, 0);
    v11 = v17;
    v12 = v11;
    if (v10 || !v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBNode cmpdAddSetInformation:withInputBuffer:withRenameTarget:];
      }
    }

    else
    {
      v13 = &self->super.isa + self->_marshallPos;
      v14 = v13[1];
      v13[1] = v11;
      v15 = v11;

      [(SMBNode *)self updateCmpdHdr];
      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode cmpdAddSetInformation:withInputBuffer:withRenameTarget:];
    }

    v10 = 12;
  }

  return v10;
}

- (int)cmpdParseSetInformation:(smb_setinfo *)information
{
  v6 = 0;
  v5 = 0;
  result = [(SMBNode *)self parseNextHeader:17 retNTStatus:&v6 retMdpp:&v5];
  information->var8 = v6;
  return result;
}

- (int)updateCmpdHdr
{
  if (self->_isCmpd)
  {
    marshallPos = self->_marshallPos;
    if (marshallPos)
    {
      rqp = self->rqp;
      writeLen = [*(&self->super.isa + marshallPos) writeLen];
      v6 = writeLen;
      if ((writeLen & 7) != 0)
      {
        v6 = (writeLen & 0xFFFFFFF8) + 8;
      }

      if (writeLen)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      [(SMB_rq *)rqp[self->_marshallPos - 1] smb_rq_set_sr_nextcmdp:v7];
      [(SMB_rq *)rqp[self->_marshallPos - 1] setSr_next_rqp:rqp[self->_marshallPos]];
      [(SMB_rq *)rqp[self->_marshallPos] smb_rq_set_srflagsp:4];
      v8 = self->_marshallPos + 1;
    }

    else
    {
      v8 = 1;
    }

    result = 0;
    self->_marshallPos = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode updateCmpdHdr];
    }

    return 22;
  }

  return result;
}

- (int)parseNextHeader:(unsigned __int16)header retNTStatus:(unsigned int *)status retMdpp:(mdchain *)mdpp
{
  v44 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v34 = &v35;
  memset(__dst, 0, sizeof(__dst));
  if (!self->_isCmpd)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode parseNextHeader:retNTStatus:retMdpp:];
    }

    goto LABEL_16;
  }

  p_parsePos = &self->_parsePos;
  rqp = self->rqp;
  v8 = self->rqp[self->_parsePos];
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode parseNextHeader:retNTStatus:retMdpp:];
    }

    goto LABEL_16;
  }

  if ([(SMB_rq *)v8 sr_command]!= header)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode parseNextHeader:rqp retNTStatus:? retMdpp:?];
    }

LABEL_16:
    replyError = 22;
    goto LABEL_17;
  }

  v11 = *p_parsePos;
  if (v11)
  {
    if (!rqp[(v11 - 1)])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBNode parseNextHeader:? retNTStatus:? retMdpp:?];
      }

      goto LABEL_16;
    }

    if (([(SMB_rq *)rqp[v11] sr_extflags]& 2) != 0)
    {
      smb_rq_getreply = [(SMB_rq *)rqp[*p_parsePos] smb_rq_getreply];
      *mdpp = smb_rq_getreply;
    }

    else
    {
      smb_rq_getreply = [(SMB_rq *)self->rqp[0] smb_rq_getreply];
      *mdpp = smb_rq_getreply;
      command = smb2_rq_next_command(rqp[self->_parsePos - 1], &self->_cmpdNextCmdOffset, smb_rq_getreply);
      if (command)
      {
        replyError = command;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [SMBNode parseNextHeader:rqp retNTStatus:? retMdpp:?];
        }

        goto LABEL_17;
      }
    }

    mem = md_get_mem(smb_rq_getreply, __dst, 0x40uLL, 0);
    if (mem)
    {
      replyError = mem;
      if (piston_log_level && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [SMBNode parseNextHeader:rqp retNTStatus:? retMdpp:?];
      }
    }

    else
    {
      replyError = [(SMB_rq *)rqp[*p_parsePos] replyError];
      *status = [(SMB_rq *)rqp[(*p_parsePos)++] sr_ntstatus];
    }
  }

  else
  {
    smb_rq_getreply2 = [(SMB_rq *)*rqp smb_rq_getreply];
    *mdpp = smb_rq_getreply2;
    v18 = *(smb_rq_getreply2 + 16);
    v35 = *smb_rq_getreply2;
    v36 = v18;
    v20 = [(SMB_rq *)*rqp sr_command]== 5 && [(SMB_rq *)*rqp replyError]== 0;
    if (self->_marshallPos >= 2)
    {
      v22 = 1;
      v23 = MEMORY[0x277D86220];
      *&v19 = 136315650;
      v33 = v19;
      v24 = rqp;
      do
      {
        if (([v24[1] sr_extflags] & 2) != 0)
        {
          smb_rq_getreply3 = [v24[1] smb_rq_getreply];
          v27 = smb_rq_getreply3[1];
          v35 = *smb_rq_getreply3;
          v36 = v27;
        }

        else
        {
          if (!*v24)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [SMBNode parseNextHeader:retNTStatus:retMdpp:];
            }

            goto LABEL_16;
          }

          v25 = smb2_rq_next_command(*v24, &self->_cmpdNextCmdOffset, &v35);
          if (v25)
          {
            replyError = v25;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [SMBNode parseNextHeader:v24 retNTStatus:? retMdpp:?];
            }

            goto LABEL_17;
          }
        }

        v28 = smb2_rq_parse_header(v24[1], &v34);
        if (v28)
        {
          v29 = piston_log_level == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = v28;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sr_messageid = [v24[1] sr_messageid];
            *buf = v33;
            v38 = "[SMBNode parseNextHeader:retNTStatus:retMdpp:]";
            v39 = 1024;
            v40 = v30;
            v41 = 2048;
            v42 = sr_messageid;
            _os_log_error_impl(&dword_264287000, v23, OS_LOG_TYPE_ERROR, "%s: smb2_rq_parse_header failed %d, id %lld\n", buf, 0x1Cu);
          }
        }

        if ([v24[1] sr_command] == 5 && !objc_msgSend(v24[1], "replyError"))
        {
          ++v20;
        }

        if ([v24[1] sr_command] == 6)
        {
          v20 = (__PAIR64__(v20, [v24[1] replyError]) - 1) >> 32;
        }

        ++v22;
        ++v24;
      }

      while (self->_marshallPos > v22);
    }

    if (v20 >= 1)
    {
      [(SMBNode *)self setIsOpen:1];
    }

    self->_cmpdNextCmdOffset = 0;
    replyError = [(SMB_rq *)rqp[self->_parsePos] replyError];
    *status = [(SMB_rq *)rqp[self->_parsePos++] sr_ntstatus];
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return replyError;
}

- (void)sendCmpdRequest:(id)request
{
  requestCopy = request;
  if (!self->_isCmpd)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode sendCmpdRequest:];
      if (!requestCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!requestCopy)
    {
      goto LABEL_10;
    }

    requestCopy[2](requestCopy, 22);
    goto LABEL_10;
  }

  v5 = [(SMBNode *)self pd];
  v6 = self->rqp[0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__SMBNode_sendCmpdRequest___block_invoke;
  v9[3] = &unk_279B4F7E0;
  v7 = requestCopy;
  v9[4] = self;
  v10 = v7;
  v8 = smb_rq_simple_block(v5, v6, v9);

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode sendCmpdRequest:];
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (v7)
    {
LABEL_5:
      v7[2](v7, v8);
    }
  }

LABEL_6:

LABEL_10:
}

void __27__SMBNode_sendCmpdRequest___block_invoke(uint64_t a1, int a2)
{
  v4 = MEMORY[0x266734A50](*(a1 + 40));
  if (a2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __27__SMBNode_sendCmpdRequest___block_invoke_cold_1(a1);
    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v4)
  {
LABEL_4:
    v4[2](v4, 0);
  }

LABEL_5:
}

- (int)resetCmpdRequest
{
  if (self->_isCmpd)
  {
    for (i = 8; i != 48; i += 8)
    {
      v4 = *(&self->super.isa + i);
      if (v4)
      {
        [v4 smb_rq_done];
        v5 = *(&self->super.isa + i);
        *(&self->super.isa + i) = 0;
      }
    }

    result = 0;
    self->_marshallPos = 0;
    self->_parsePos = 0;
    self->_cmpdNextCmdOffset = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SMBNode resetCmpdRequest];
    }

    return 12;
  }

  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)fid
{
  objc_copyStruct(v4, &self->_fid, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)commonInit:onShareID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddCreate:withName:withStreamName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddCreate:withName:withStreamName:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddCreate:withName:withStreamName:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddClose:withFlags:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddClose:withFlags:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddClose:withFlags:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddRead:intoBuffer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddRead:intoBuffer:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddRead:intoBuffer:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddWrite:fromBuffer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddWrite:fromBuffer:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddWrite:fromBuffer:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddIoctl:getReparsePoint:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddIoctl:getReparsePoint:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddIoctl:setReparsePoint:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddIoctl:setReparsePoint:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddIoctl:pipeTransceive:withRecvData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddIoctl:pipeTransceive:withRecvData:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddQueryDirectory:onDir:returnDataIn:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddQueryDirectory:onDir:returnDataIn:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddQueryDirectory:onDir:returnDataIn:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddQueryInformation:withStreamName:forFileAllInfo:withInputBuffer:withOutputBuffer:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddQueryInformation:withStreamName:forFileAllInfo:withInputBuffer:withOutputBuffer:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddQueryInformation:withStreamName:forFileAllInfo:withInputBuffer:withOutputBuffer:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddSetInformation:withInputBuffer:withRenameTarget:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cmpdAddSetInformation:withInputBuffer:withRenameTarget:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateCmpdHdr
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseNextHeader:(unsigned int *)a1 retNTStatus:(uint64_t)a2 retMdpp:.cold.1(unsigned int *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a2 + 8 * *a1) sr_command];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)parseNextHeader:(_DWORD *)a1 retNTStatus:(uint64_t)a2 retMdpp:.cold.2(_DWORD *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a2 + 8 * (*a1 - 1)) sr_messageid];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)parseNextHeader:(unsigned int *)a1 retNTStatus:(uint64_t)a2 retMdpp:.cold.3(unsigned int *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a2 + 8 * *a1) sr_messageid];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)parseNextHeader:(_DWORD *)a1 retNTStatus:retMdpp:.cold.4(_DWORD *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1 - 1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parseNextHeader:(id *)a1 retNTStatus:retMdpp:.cold.5(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 sr_messageid];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parseNextHeader:retNTStatus:retMdpp:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseNextHeader:retNTStatus:retMdpp:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseNextHeader:retNTStatus:retMdpp:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendCmpdRequest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendCmpdRequest:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __27__SMBNode_sendCmpdRequest___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) sr_ntstatus];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetCmpdRequest
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end