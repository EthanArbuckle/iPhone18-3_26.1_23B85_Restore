@interface PipeInfo
- (id)description;
- (void)dealloc;
@end

@implementation PipeInfo

- (void)dealloc
{
  if (WPLogInitOnce != -1)
  {
    [PipeInfo dealloc];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "WPPM: PipeInfo dealloc", buf, 2u);
  }

  pipe = self->_pipe;
  if (pipe)
  {
    input = [(CBScalablePipe *)pipe input];
    if (input)
    {
      v6 = input;
      output = [(CBScalablePipe *)self->_pipe output];

      if (output)
      {
        input2 = [(CBScalablePipe *)self->_pipe input];
        currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
        v10 = *MEMORY[0x277CBE640];
        [input2 removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

        output2 = [(CBScalablePipe *)self->_pipe output];
        currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
        [output2 removeFromRunLoop:currentRunLoop2 forMode:v10];

        input3 = [(CBScalablePipe *)self->_pipe input];
        [input3 setDelegate:0];

        output3 = [(CBScalablePipe *)self->_pipe output];
        [output3 setDelegate:0];

        input4 = [(CBScalablePipe *)self->_pipe input];
        [input4 close];

        output4 = [(CBScalablePipe *)self->_pipe output];
        [output4 close];
      }
    }
  }

  voucher = self->_voucher;
  if (voucher)
  {
    self->_voucher = 0;
  }

  v18 = self->_pipe;
  self->_pipe = 0;

  [(PipeInfo *)self releaseQOSOverride];
  pipeReadSource = self->_pipeReadSource;
  if (pipeReadSource)
  {
    dispatch_source_cancel(pipeReadSource);
  }

  pipeDataTransfer = self->_pipeDataTransfer;
  if (pipeDataTransfer)
  {
    self->_pipeDataTransfer = 0;
  }

  v21.receiver = self;
  v21.super_class = PipeInfo;
  [(PipeInfo *)&v21 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(CBScalablePipe *)self->_pipe name];
  v5 = name;
  v6 = @"YES";
  if (self->_qosOverride)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (!self->_socketThreadQOSOverride)
  {
    v6 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"PipeInfo: pipe %@, voucher %@, newProtocol %d, vSent %d, vReceived %d, connSent %d, connPDU %d, QOS override %@, socket QOS override %@", name, self->_voucher, self->_newProtocol, self->_versionInfoSent, self->_versionInfoReceived, self->_pipeDidConnectSent, self->_useConnectStatusPDU, v7, v6];

  return v8;
}

@end