@interface SXLayoutParametersManager
- (SXLayoutParametersManager)init;
- (id)layoutParametersForTask:(id)a3 previousLayoutOptions:(id)a4;
- (void)layoutFinishedForTask:(id)a3 result:(id)a4;
@end

@implementation SXLayoutParametersManager

- (SXLayoutParametersManager)init
{
  v6.receiver = self;
  v6.super_class = SXLayoutParametersManager;
  v2 = [(SXLayoutParametersManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    durations = v2->_durations;
    v2->_durations = v3;
  }

  return v2;
}

- (void)layoutFinishedForTask:(id)a3 result:(id)a4
{
  v13 = a3;
  v6 = a4;
  [v6 duration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 elapsedDuration];
  }

  v7 = [v6 blueprint];
  v8 = [v7 isComplete];

  if (v8)
  {
    v9 = [(SXLayoutParametersManager *)self durations];
    v10 = MEMORY[0x1E696AD98];
    [v6 duration];
    v11 = [v10 numberWithDouble:?];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "type")}];
    [v9 setObject:v11 forKey:v12];
  }
}

- (id)layoutParametersForTask:(id)a3 previousLayoutOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 1)
  {
    v8 = 2;
  }

  else if (v7)
  {
    v9 = [v6 options];
    v10 = [v7 diffWithLayoutOptions:v9];

    v11 = 2;
    if (((1 << v10) & 0x10110) == 0)
    {
      v11 = 1;
    }

    if (v10 <= 0x10)
    {
      v8 = v11;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v12 = [(SXLayoutParametersManager *)self durations];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "type")}];
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    [v14 doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = -1.0;
  }

  v17 = [SXLayoutParameters alloc];
  v18 = [v6 options];
  v19 = [(SXLayoutParameters *)v17 initWithLayoutOptions:v18 layoutType:v8 expectedDuration:v16];

  return v19;
}

@end