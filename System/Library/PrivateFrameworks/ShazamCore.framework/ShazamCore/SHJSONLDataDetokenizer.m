@interface SHJSONLDataDetokenizer
- (BOOL)closeWithError:(id *)a3;
- (BOOL)processData:(id)a3 error:(id *)a4;
- (BOOL)writeDataToDelegate:(id)a3 withError:(id *)a4;
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
    v3 = [MEMORY[0x277CBEB28] data];
    currentData = v2->_currentData;
    v2->_currentData = v3;
  }

  return v2;
}

- (BOOL)writeDataToDelegate:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:1 error:&v20];
  v8 = v20;
  if (v7)
  {
    v9 = [(SHJSONLDataDetokenizer *)self next];

    if (!v9 || (-[SHJSONLDataDetokenizer next](self, "next"), v10 = objc_claimAutoreleasedReturnValue(), v19 = 0, v11 = [v10 processData:v6 error:&v19], v9 = v19, v10, v12 = v9, v11))
    {
      v13 = [(SHJSONLDataDetokenizer *)self delegate];

      if (!v13)
      {
        v16 = 1;
        goto LABEL_13;
      }

      v14 = [(SHJSONLDataDetokenizer *)self delegate];
      v18 = v9;
      v15 = [v14 parsedJSONObject:v7 error:&v18];
      v12 = v18;

      if (v15)
      {
        v16 = 1;
        v9 = v12;
LABEL_13:

        goto LABEL_14;
      }

      v9 = v12;
    }

    [SHCoreError annotateError:a4 withError:v12];
    v16 = 0;
    goto LABEL_13;
  }

  if (a4)
  {
    [SHCoreError errorWithCode:300 underlyingError:v8];
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

- (BOOL)processData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [@"\n" dataUsingEncoding:4];
  v8 = [v6 sh_rangeOfData:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(SHJSONLDataDetokenizer *)self currentData];
    [v10 appendData:v6];
    v11 = 1;
  }

  else
  {
    v12 = v8;
    v13 = v8 + v9;
    v10 = [v6 subdataWithRange:{0, v8 + v9}];
    if (v12)
    {
      v14 = [(SHJSONLDataDetokenizer *)self currentData];
      [v14 appendData:v10];
    }

    v15 = [(SHJSONLDataDetokenizer *)self currentData];
    v16 = [v15 length];

    if (!v16)
    {
      goto LABEL_7;
    }

    v17 = [(SHJSONLDataDetokenizer *)self currentData];
    v18 = [MEMORY[0x277CBEB28] data];
    [(SHJSONLDataDetokenizer *)self setCurrentData:v18];

    LODWORD(v18) = [(SHJSONLDataDetokenizer *)self writeDataToDelegate:v17 withError:a4];
    if (!v18)
    {
      v11 = 0;
    }

    else
    {
LABEL_7:
      v19 = MEMORY[0x277CBEB28];
      v20 = [v6 subdataWithRange:{v13, objc_msgSend(v6, "length") - v13}];
      v21 = [v19 dataWithData:v20];

      v11 = [(SHJSONLDataDetokenizer *)self processData:v21 error:a4];
    }
  }

  return v11;
}

- (BOOL)closeWithError:(id *)a3
{
  v5 = [(SHJSONLDataDetokenizer *)self currentData];
  if ([v5 length])
  {
    v6 = [(SHJSONLDataDetokenizer *)self currentData];
    v7 = [(SHJSONLDataDetokenizer *)self writeDataToDelegate:v6 withError:a3];

    if (!v7)
    {
      return 0;
    }
  }

  else
  {
  }

  v9 = [(SHJSONLDataDetokenizer *)self next];
  v10 = [v9 closeWithError:a3];

  return v10;
}

- (SHJSONLDataDetokenizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end