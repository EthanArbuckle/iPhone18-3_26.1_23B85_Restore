@interface SHJSONLDataDetokenizer
- (BOOL)closeWithError:(id *)error;
- (BOOL)processData:(id)data error:(id *)error;
- (BOOL)writeDataToDelegate:(id)delegate withError:(id *)error;
- (SHJSONLDataDetokenizer)init;
- (SHJSONLDataDetokenizerDelegate)delegate;
@end

@implementation SHJSONLDataDetokenizer

- (SHJSONLDataDetokenizer)init
{
  v6.receiver = self;
  v6.super_class = SHJSONLDataDetokenizer;
  v2 = [(SHJSONLDataDetokenizer *)&v6 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEB28] data];
    currentData = v2->_currentData;
    v2->_currentData = data;
  }

  return v2;
}

- (BOOL)writeDataToDelegate:(id)delegate withError:(id *)error
{
  delegateCopy = delegate;
  v20 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:delegateCopy options:1 error:&v20];
  v8 = v20;
  if (v7)
  {
    next = [(SHJSONLDataDetokenizer *)self next];

    if (!next || (-[SHJSONLDataDetokenizer next](self, "next"), v10 = objc_claimAutoreleasedReturnValue(), v19 = 0, v11 = [v10 processData:delegateCopy error:&v19], next = v19, v10, v12 = next, v11))
    {
      delegate = [(SHJSONLDataDetokenizer *)self delegate];

      if (!delegate)
      {
        v16 = 1;
        goto LABEL_13;
      }

      delegate2 = [(SHJSONLDataDetokenizer *)self delegate];
      v18 = next;
      v15 = [delegate2 parsedJSONObject:v7 error:&v18];
      v12 = v18;

      if (v15)
      {
        v16 = 1;
        next = v12;
LABEL_13:

        goto LABEL_14;
      }

      next = v12;
    }

    [SHCoreError annotateError:error withError:v12];
    v16 = 0;
    goto LABEL_13;
  }

  if (error)
  {
    [SHCoreError errorWithCode:300 underlyingError:v8];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

- (BOOL)processData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [@"\n" dataUsingEncoding:4];
  v8 = [dataCopy sh_rangeOfData:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentData = [(SHJSONLDataDetokenizer *)self currentData];
    [currentData appendData:dataCopy];
    v11 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v8 + v9;
    currentData = [dataCopy subdataWithRange:{0, v8 + v9}];
    if (v12)
    {
      currentData2 = [(SHJSONLDataDetokenizer *)self currentData];
      [currentData2 appendData:currentData];
    }

    currentData3 = [(SHJSONLDataDetokenizer *)self currentData];
    v16 = [currentData3 length];

    if (!v16)
    {
      goto LABEL_7;
    }

    currentData4 = [(SHJSONLDataDetokenizer *)self currentData];
    data = [MEMORY[0x277CBEB28] data];
    [(SHJSONLDataDetokenizer *)self setCurrentData:data];

    LODWORD(data) = [(SHJSONLDataDetokenizer *)self writeDataToDelegate:currentData4 withError:error];
    if (!data)
    {
      v11 = 0;
    }

    else
    {
LABEL_7:
      v19 = MEMORY[0x277CBEB28];
      v20 = [dataCopy subdataWithRange:{v13, objc_msgSend(dataCopy, "length") - v13}];
      v21 = [v19 dataWithData:v20];

      v11 = [(SHJSONLDataDetokenizer *)self processData:v21 error:error];
    }
  }

  return v11;
}

- (BOOL)closeWithError:(id *)error
{
  currentData = [(SHJSONLDataDetokenizer *)self currentData];
  if ([currentData length])
  {
    currentData2 = [(SHJSONLDataDetokenizer *)self currentData];
    v7 = [(SHJSONLDataDetokenizer *)self writeDataToDelegate:currentData2 withError:error];

    if (!v7)
    {
      return 0;
    }
  }

  else
  {
  }

  next = [(SHJSONLDataDetokenizer *)self next];
  v10 = [next closeWithError:error];

  return v10;
}

- (SHJSONLDataDetokenizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end