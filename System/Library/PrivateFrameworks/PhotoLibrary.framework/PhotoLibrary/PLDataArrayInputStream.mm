@interface PLDataArrayInputStream
- (BOOL)_setCFClientFlags:(unint64_t)a3 callback:(void *)a4 context:(id *)a5;
- (PLDataArrayInputStream)initWithDataArray:(id)a3;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (void)_scheduleInCFRunLoop:(__CFRunLoop *)a3 forMode:(__CFString *)a4;
- (void)_scheduleProgressUpdate;
- (void)_streamEventTrigger;
- (void)_updateProgress;
- (void)close;
- (void)dealloc;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
@end

@implementation PLDataArrayInputStream

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  bzero(a3, a4);
  v14 = 160;
  v6 = 0;
  if (self->_dataOffset < self->_dataLength && a4 != 0)
  {
    do
    {
      if (self->_currentIndex >= self->_dataCount || self->_currentOffset >= self->_currentLength)
      {
        break;
      }

      v8 = [(NSArray *)self->_dataArray objectAtIndex:?];
      if (a4 - v6 >= self->_currentLength - self->_currentOffset)
      {
        v9 = self->_currentLength - self->_currentOffset;
      }

      else
      {
        v9 = a4 - v6;
      }

      memcpy(&a3[v6], ([v8 bytes] + self->_currentOffset), v9);
      self->_currentOffset += v9;
      dataOffset = (self->_dataOffset + v9);
      self->_dataOffset = dataOffset;
      if (self->_currentOffset == self->_currentLength)
      {
        v11 = 0;
        ++self->_currentIndex;
        self->_currentOffset = 0;
        if (self->_currentIndex < self->_dataCount)
        {
          v11 = [-[NSArray objectAtIndex:](self->_dataArray "objectAtIndex:"length"")];
        }

        self->_currentLength = v11;
        dataOffset = self->_dataOffset;
      }

      v6 += v9;
    }

    while (dataOffset < *(&self->super.super.super.isa + v14) && v6 < a4);
  }

  [(PLDataArrayInputStream *)self _scheduleProgressUpdate];
  [(PLDataArrayInputStream *)self _scheduleCallback];
  return v6;
}

- (void)_scheduleProgressUpdate
{
  if (self->_progressDelegate)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE738]];

    [(PLDataArrayInputStream *)self performSelector:sel__updateProgress withObject:0 afterDelay:v3 inModes:0.5];
  }
}

- (void)_updateProgress
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateProgress object:0];
  progressDelegate = self->_progressDelegate;
  if (progressDelegate)
  {

    [(PLDataArrayInputStreamProgressDelegate *)progressDelegate dataArrayInputStreamBytesWereRead:self];
  }
}

- (void)close
{
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceInvalidate(rls);
  }

  self->_streamStatus = 6;
}

- (void)removeFromRunLoop:(id)a3 forMode:(id)a4
{
  v6 = [a3 getCFRunLoop];

  [(PLDataArrayInputStream *)self _unscheduleFromCFRunLoop:v6 forMode:a4];
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  v6 = [a3 getCFRunLoop];

  [(PLDataArrayInputStream *)self _scheduleInCFRunLoop:v6 forMode:a4];
}

- (BOOL)_setCFClientFlags:(unint64_t)a3 callback:(void *)a4 context:(id *)a5
{
  p_clientContext = &self->_clientContext;
  if (a5)
  {
    v8 = *&a5->var0;
    v9 = *&a5->var2;
    self->_clientContext.copyDescription = a5->var4;
    *&p_clientContext->version = v8;
    *&self->_clientContext.retain = v9;
    retain = self->_clientContext.retain;
    if (retain)
    {
      retain(self->_clientContext.info, a2, a3);
    }
  }

  else
  {
    release = self->_clientContext.release;
    if (release)
    {
      release(self->_clientContext.info, a2, a3);
    }

    p_clientContext->copyDescription = 0;
    *&p_clientContext->version = 0u;
    *&p_clientContext->retain = 0u;
  }

  self->_clientCallback = a4;
  return 1;
}

- (void)_scheduleInCFRunLoop:(__CFRunLoop *)a3 forMode:(__CFString *)a4
{
  rls = self->_rls;
  if (!rls)
  {
    v9.version = 0;
    memset(&v9.retain, 0, 56);
    v9.info = self;
    v9.perform = _streamEventTrigger;
    rls = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v9);
    self->_rls = rls;
    if (!rls)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
      rls = self->_rls;
    }
  }

  CFRunLoopAddSource(a3, rls, a4);
}

- (void)_streamEventTrigger
{
  v4 = self;
  openEventSent = self->_openEventSent;
  if (openEventSent)
  {
    dataOffset = self->_dataOffset;
    dataLength = self->_dataLength;
    if (dataOffset >= dataLength || self->_streamStatus == 6)
    {
      if (dataOffset != dataLength)
      {
        goto LABEL_17;
      }

      self->_streamStatus = 5;
      clientCallback = self->_clientCallback;
      if (clientCallback)
      {
        info = self->_clientContext.info;
        v10 = self;
        v11 = 16;
LABEL_11:
        clientCallback(v10, v11, info);
        goto LABEL_17;
      }

      v13 = [(PLDataArrayInputStream *)self delegate];
      v14 = self;
      v15 = 16;
    }

    else
    {
      clientCallback = self->_clientCallback;
      if (clientCallback)
      {
        info = self->_clientContext.info;
        v10 = self;
        v11 = 2;
        goto LABEL_11;
      }

      v13 = [(PLDataArrayInputStream *)self delegate];
      v14 = self;
      v15 = 2;
    }

    [v13 stream:v14 handleEvent:v15];
  }

  else
  {
    v12 = self->_clientCallback;
    if (v12)
    {
      v12(self, 1, self->_clientContext.info);
    }

    else
    {
      [-[PLDataArrayInputStream delegate](self "delegate")];
    }

    self->_openEventSent = 1;
  }

LABEL_17:
  if (self->_dataOffset <= self->_dataLength)
  {
    if (openEventSent)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  if (!openEventSent)
  {
LABEL_19:
    [(PLDataArrayInputStream *)self _scheduleCallback];
  }

LABEL_20:

  v16 = self;
}

- (void)dealloc
{
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceInvalidate(rls);
    CFRelease(self->_rls);
  }

  release = self->_clientContext.release;
  if (release)
  {
    release(self->_clientContext.info, a2);
  }

  v5.receiver = self;
  v5.super_class = PLDataArrayInputStream;
  [(PLDataArrayInputStream *)&v5 dealloc];
}

- (PLDataArrayInputStream)initWithDataArray:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PLDataArrayInputStream;
  v4 = [(PLDataArrayInputStream *)&v16 init];
  if (v4)
  {
    v4->_dataArray = a3;
    v4->_dataLength = 0;
    v4->_dataCount = [(NSArray *)v4->_dataArray count];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    dataArray = v4->_dataArray;
    v6 = [(NSArray *)dataArray countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(dataArray);
          }

          v4->_dataLength += [*(*(&v12 + 1) + 8 * i) length];
        }

        v7 = [(NSArray *)dataArray countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    if (v4->_dataCount)
    {
      v10 = [-[NSArray objectAtIndex:](v4->_dataArray objectAtIndex:{0), "length"}];
    }

    else
    {
      v10 = 0;
    }

    v4->_currentLength = v10;
  }

  return v4;
}

@end