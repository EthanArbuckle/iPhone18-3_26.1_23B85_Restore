@interface MTMediaTask
- (MTMediaTask)initWithType:(int64_t)type;
- (void)perform:(id)perform;
@end

@implementation MTMediaTask

- (MTMediaTask)initWithType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = MTMediaTask;
  v4 = [(MTMediaTask *)&v13 init];
  if (v4)
  {
    if (type)
    {
      v5 = 301;
    }

    else
    {
      v5 = 300;
    }

    v6 = objc_alloc(MEMORY[0x277CEE570]);
    mediaApiClientIdentifier = [MEMORY[0x277D3DB60] mediaApiClientIdentifier];
    mediaApiClientVersion = [MEMORY[0x277D3DB60] mediaApiClientVersion];
    mEMORY[0x277D3DAC8] = [MEMORY[0x277D3DAC8] sharedInstance];
    v10 = [v6 initWithType:v5 clientIdentifier:mediaApiClientIdentifier clientVersion:mediaApiClientVersion bag:mEMORY[0x277D3DAC8]];
    mediaTask = v4->_mediaTask;
    v4->_mediaTask = v10;

    if (type)
    {
      [(AMSMediaTask *)v4->_mediaTask setIncludedResultKeys:&unk_2870B6B78];
    }
  }

  return v4;
}

- (void)perform:(id)perform
{
  performCopy = perform;
  perform = [(AMSMediaTask *)self->_mediaTask perform];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__MTMediaTask_perform___block_invoke;
  v7[3] = &unk_279A44CF0;
  v8 = performCopy;
  v6 = performCopy;
  [perform addFinishBlock:v7];
}

void __23__MTMediaTask_perform___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = [v20 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v20 object];
    v9 = [v8 objectForKey:@"data"];
    if (!v9)
    {
      v10 = [v8 objectForKey:@"results"];
      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:@"podcast-episodes"];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 objectForKey:@"podcast"];
        }

        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 firstObject];
      }

      else
      {
        v16 = 0;
      }

      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 objectForKey:@"data"];
      }

      else
      {
        v17 = 0;
      }

      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v9 = v18;
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      (*(v19 + 16))(v19, v9, 0);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v5);
    }
  }
}

@end