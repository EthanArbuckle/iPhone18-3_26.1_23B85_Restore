@interface MFIMAPSimpleDownload
- (unint64_t)bytesFetched;
- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache;
- (void)dealloc;
- (void)handleFetchResult:(id)result;
- (void)processResults;
- (void)setError:(id)error;
@end

@implementation MFIMAPSimpleDownload

- (unint64_t)bytesFetched
{
  [(MFIMAPSimpleDownload *)self mf_lock];
  v3 = [(MFCountingDataConsumer *)self->super._countingConsumer count];
  [(MFIMAPSimpleDownload *)self mf_unlock];
  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPSimpleDownload;
  [(MFIMAPDownload *)&v2 dealloc];
}

- (void)handleFetchResult:(id)result
{
  resultCopy = result;
  type = [resultCopy type];
  switch(type)
  {
    case 7:
      section = self->_section;
      section = [resultCopy section];
      v9 = [(NSString *)section caseInsensitiveCompare:section];

      if (v9)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    case 5:
      v5 = self->_section;
      v6 = @"TEXT";
      break;
    case 4:
      v5 = self->_section;
      v6 = @"HEADER";
      break;
    default:
      goto LABEL_12;
  }

  if ([(NSString *)v5 caseInsensitiveCompare:v6]== NSOrderedSame)
  {
LABEL_9:
    [(MFIMAPSimpleDownload *)self mf_lock];
    pendingFetchResults = self->super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = self->super._pendingFetchResults;
      self->super._pendingFetchResults = v11;

      pendingFetchResults = self->super._pendingFetchResults;
    }

    [(NSMutableArray *)pendingFetchResults addObject:resultCopy];
    [(MFIMAPSimpleDownload *)self mf_unlock];
  }

LABEL_12:
}

- (void)processResults
{
  [(MFIMAPSimpleDownload *)self mf_lock];
  if ((*(self + 64) & 2) == 0)
  {
    v3 = +[MFActivityMonitor currentMonitor];
    v4 = [(NSMutableArray *)self->super._pendingFetchResults count];
    [(NSMutableArray *)self->super._pendingFetchResults sortUsingFunction:_comparePartialFetchResults context:0];
    for (; v4; --v4)
    {
      if ((*(self + 64) & 2) != 0)
      {
        break;
      }

      [(NSMutableArray *)self->super._pendingFetchResults removeObjectAtIndex:0];
      bytesFetched = [(MFIMAPSimpleDownload *)self bytesFetched];
      v6 = *(self + 64);
      v7 = (v6 & 2) == 0 && bytesFetched != 0 ? 0 : 2;
      *(self + 64) = v7 | v6 & 0xFD;
      if ((v6 & 2) == 0 && bytesFetched != 0 && (*(self + 64) & 1) != 0 && bytesFetched < self->_length)
      {
        *(self + 64) = v6 & 0xFD;
      }

      else
      {
        *(self + 64) = v6 | 2;
        error = [v3 error];
        v9 = error;
        if (error)
        {
          v10 = [error mf_shouldFailDownload] ? 0 : 2;
        }

        else
        {
          v10 = 2;
        }

        *(self + 64) = *(self + 64) & 0xFD | v10;
      }
    }

    if ((*(self + 64) & 2) != 0 && self->_range.length == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_originalDataLength = [(MFIMAPSimpleDownload *)self bytesFetched];
    }

    mainConsumer = [(MFIMAPDownload *)self mainConsumer];
    [mainConsumer done];
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache
{
  pipelineCopy = pipeline;
  [(MFIMAPSimpleDownload *)self mf_lock];
  if (([pipelineCopy isFull] & 1) == 0 && !-[MFIMAPSimpleDownload isComplete](self, "isComplete"))
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    bytesFetched = [(MFIMAPSimpleDownload *)self bytesFetched];
    [v5 appendString:@"BODY.PEEK["];
    if (self->_section)
    {
      [v5 appendString:?];
    }

    [v5 appendString:@"]"];
    length = self->_length;
    if (*(self + 64))
    {
      length -= bytesFetched;
      v8 = length;
      if (bytesFetched || (v8 = self->_range.length, v8 != 0x7FFFFFFFFFFFFFFFLL))
      {
        if (v8)
        {
          [v5 appendString:@"<"];
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_range.location + bytesFetched];
          [v5 appendString:v9];

          [v5 appendString:@"."];
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v8];
          [v5 appendString:v10];

          [v5 appendString:@">"];
        }
      }
    }

    [pipelineCopy addFetchCommandForUid:self->super._uid fetchItem:v5 expectedLength:length bodyDataConsumer:self->super._mainConsumer consumerSection:self->_section];
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

- (void)setError:(id)error
{
  errorCopy = error;
  [(MFIMAPSimpleDownload *)self mf_lock];
  if (self->_error != errorCopy)
  {
    objc_storeStrong(&self->_error, error);
  }

  [(MFIMAPSimpleDownload *)self mf_unlock];
}

@end