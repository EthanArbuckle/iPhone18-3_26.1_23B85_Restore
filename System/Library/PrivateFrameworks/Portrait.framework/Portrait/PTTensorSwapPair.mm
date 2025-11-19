@interface PTTensorSwapPair
- (PTTensorSwapPair)initWithIOSurfaces:(__IOSurface *)a3 names:(id)a4;
- (__CVBuffer)tensorWithIndex:(int)a3;
- (id)tensorNameWithIndex:(int)a3;
- (void)dealloc;
@end

@implementation PTTensorSwapPair

- (PTTensorSwapPair)initWithIOSurfaces:(__IOSurface *)a3 names:(id)a4
{
  *&v21[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v19.receiver = self;
  v19.super_class = PTTensorSwapPair;
  v7 = [(PTTensorSwapPair *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = *MEMORY[0x277CBECE8];
    names = v7->_names;
    v12 = 1;
    do
    {
      v13 = v12;
      if (CVPixelBufferCreateWithIOSurface(v10, a3[v9], 0, &v8->_tensorPair[v9]))
      {
        v14 = _PTLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(PTTensorSwapPair *)buf initWithIOSurfaces:v21 names:v14];
        }
      }

      v15 = [v6 objectAtIndexedSubscript:v9];
      v16 = names[v9];
      names[v9] = v15;

      v12 = 0;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
    v17 = v8;
  }

  return v8;
}

- (void)dealloc
{
  v3 = 0;
  tensorPair = self->_tensorPair;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = tensorPair[v3];
    if (v7)
    {
      CVPixelBufferRelease(v7);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  v8.receiver = self;
  v8.super_class = PTTensorSwapPair;
  [(PTTensorSwapPair *)&v8 dealloc];
}

- (__CVBuffer)tensorWithIndex:(int)a3
{
  v3 = a3 & 1;
  if (a3 < 0)
  {
    v3 = -v3;
  }

  return self->_tensorPair[v3];
}

- (id)tensorNameWithIndex:(int)a3
{
  v3 = a3 & 1;
  if (a3 < 0)
  {
    v3 = -v3;
  }

  return self->_names[v3];
}

- (void)initWithIOSurfaces:(os_log_t)log names:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "status == noErr";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", buf, 0xCu);
}

@end