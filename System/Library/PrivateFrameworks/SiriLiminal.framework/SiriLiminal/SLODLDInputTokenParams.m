@interface SLODLDInputTokenParams
- (SLODLDInputTokenParams)initWithShape:(id)a3;
- (void)_initWithDefaults;
- (void)populateWithTokens:(id)a3 error:(id *)a4;
@end

@implementation SLODLDInputTokenParams

- (void)populateWithTokens:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  shape = self->_shape;
  if (shape)
  {
    if ([(NSArray *)shape count]> 1)
    {
      v13 = [(NSArray *)self->_shape objectAtIndexedSubscript:1];
      v14 = [v13 unsignedIntegerValue];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __51__SLODLDInputTokenParams_populateWithTokens_error___block_invoke;
      v18[3] = &unk_279C0E860;
      v18[4] = self;
      v18[5] = v14;
      [v6 enumerateObjectsUsingBlock:v18];
      v15 = [v6 count];
      if (v15 < v14)
      {
        v16 = v15;
        do
        {
          [(NSMutableArray *)self->_mlInputIds setObject:&unk_2878A76C0 atIndexedSubscript:v16];
          [(NSMutableArray *)self->_mlTypeIds setObject:&unk_2878A76C0 atIndexedSubscript:v16];
          [(NSMutableArray *)self->_mlAttnMask setObject:&unk_2878A76C0 atIndexedSubscript:v16];
          [(NSMutableArray *)self->_mlPadMask setObject:&unk_2878A76D0 atIndexedSubscript:v16++];
        }

        while (v14 != v16);
      }
    }

    else if (a4)
    {
      v8 = objc_alloc(MEMORY[0x277CCA9B8]);
      v19 = *MEMORY[0x277CCA450];
      v20 = @"Index in toeken shape is not valid";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v20;
      v11 = &v19;
LABEL_7:
      v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
      *a4 = [v8 initWithDomain:@"com.apple.sl" code:116 userInfo:v12];
    }
  }

  else if (a4)
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Toekn shape not initialized";
    v9 = MEMORY[0x277CBEAC0];
    v10 = v22;
    v11 = &v21;
    goto LABEL_7;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SLODLDInputTokenParams_populateWithTokens_error___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*(result + 40) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v6 = result;
    [*(*(result + 32) + 8) setObject:a2 atIndexedSubscript:a3];
    [*(*(v6 + 32) + 16) setObject:&unk_2878A76D0 atIndexedSubscript:a3];
    [*(*(v6 + 32) + 24) setObject:&unk_2878A76D0 atIndexedSubscript:a3];
    v7 = *(*(v6 + 32) + 32);

    return [v7 setObject:&unk_2878A76C0 atIndexedSubscript:a3];
  }

  return result;
}

- (void)_initWithDefaults
{
  v3 = [(NSArray *)self->_shape objectAtIndexedSubscript:1];
  v4 = [v3 unsignedIntegerValue];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  mlInputIds = self->_mlInputIds;
  self->_mlInputIds = v5;

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  mlTypeIds = self->_mlTypeIds;
  self->_mlTypeIds = v7;

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  mlAttnMask = self->_mlAttnMask;
  self->_mlAttnMask = v9;

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  mlPadMask = self->_mlPadMask;
  self->_mlPadMask = v11;

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      [(NSMutableArray *)self->_mlInputIds setObject:&unk_2878A76C0 atIndexedSubscript:i];
      [(NSMutableArray *)self->_mlTypeIds setObject:&unk_2878A76C0 atIndexedSubscript:i];
      [(NSMutableArray *)self->_mlAttnMask setObject:&unk_2878A76C0 atIndexedSubscript:i];
      [(NSMutableArray *)self->_mlPadMask setObject:&unk_2878A76D0 atIndexedSubscript:i];
    }
  }
}

- (SLODLDInputTokenParams)initWithShape:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SLODLDInputTokenParams;
  v6 = [(SLODLDInputTokenParams *)&v13 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([v5 count] == 2)
  {
    objc_storeStrong(&v6->_shape, a3);
    [(SLODLDInputTokenParams *)v6 _initWithDefaults];
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v11 = v8;
    v12 = [v5 count];
    *buf = 136315394;
    v15 = "[SLODLDInputTokenParams initWithShape:]";
    v16 = 2048;
    v17 = v12;
    _os_log_error_impl(&dword_26754E000, v11, OS_LOG_TYPE_ERROR, "%s Expected 2D array, got %lu, not running model", buf, 0x16u);
  }

  v7 = 0;
LABEL_8:

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end