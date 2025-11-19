@interface MFIMAPCompoundDownload
- (BOOL)isComplete;
- (id)subdownloads;
- (unint64_t)bytesFetched;
- (unint64_t)expectedLength;
- (unint64_t)lengthOfDataBeforeLineConversion;
- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4;
- (void)addSubdownload:(id)a3;
- (void)dealloc;
- (void)processResults;
- (void)removeSubdownload:(id)a3;
@end

@implementation MFIMAPCompoundDownload

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPCompoundDownload;
  [(MFIMAPDownload *)&v2 dealloc];
}

- (id)subdownloads
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  if (self->_subdownloads)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_subdownloads];
  }

  else
  {
    v3 = 0;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];

  return v3;
}

- (void)addSubdownload:(id)a3
{
  v4 = a3;
  v8 = v4;
  [(MFIMAPCompoundDownload *)self mf_lock];
  subdownloads = self->_subdownloads;
  if (subdownloads)
  {
    if ([(NSMutableArray *)subdownloads indexOfObjectIdenticalTo:v4]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_subdownloads addObject:v4];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:&v8 count:1];
    v7 = self->_subdownloads;
    self->_subdownloads = v6;
  }

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (void)removeSubdownload:(id)a3
{
  v4 = a3;
  [(MFIMAPCompoundDownload *)self mf_lock];
  [(NSMutableArray *)self->_subdownloads removeObjectIdenticalTo:v4];

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (void)addCommandsToPipeline:(id)a3 withCache:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_subdownloads && ([v6 isFull] & 1) == 0)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_subdownloads;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12) addCommandsToPipeline:v6 withCache:{v7, v14}];
        if ([v6 isFull])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    [(MFIMAPCompoundDownload *)self mf_unlock];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)processResults
{
  [(MFIMAPCompoundDownload *)self mf_lock];
  [(NSMutableArray *)self->_subdownloads makeObjectsPerformSelector:a2];

  [(MFIMAPCompoundDownload *)self mf_unlock];
}

- (BOOL)isComplete
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_subdownloads)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_subdownloads;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (![*(*(&v11 + 1) + 8 * i) isComplete])
          {
            v8 = 0;
            goto LABEL_12;
          }
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_12:

    [(MFIMAPCompoundDownload *)self mf_unlock];
  }

  else
  {
    v8 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)expectedLength
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_subdownloads)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = self->_subdownloads;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) expectedLength];
        v10 = 0xFFFFFFFFLL;
        if (v9 == 0xFFFFFFFFLL)
        {
          break;
        }

        v6 += v9;
        if (v5 == ++v8)
        {
          v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
          v10 = v6;
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    [(MFIMAPCompoundDownload *)self mf_unlock];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)bytesFetched
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_subdownloads)
  {
    [(MFIMAPCompoundDownload *)self mf_lock];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_subdownloads;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 += [*(*(&v11 + 1) + 8 * i) bytesFetched];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    [(MFIMAPCompoundDownload *)self mf_unlock];
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)lengthOfDataBeforeLineConversion
{
  v16 = *MEMORY[0x277D85DE8];
  subdownloads = self->_subdownloads;
  if (subdownloads)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = subdownloads;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 += [*(*(&v11 + 1) + 8 * i) lengthOfDataBeforeLineConversion];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end