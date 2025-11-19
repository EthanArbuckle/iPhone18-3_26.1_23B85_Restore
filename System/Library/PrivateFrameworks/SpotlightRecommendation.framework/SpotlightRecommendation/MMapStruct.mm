@interface MMapStruct
+ (id)mMapStructWithFilepath:(id)a3;
- (MMapStruct)initWithBuffer:(void *)a3 size:(unint64_t)a4;
- (void)dealloc;
@end

@implementation MMapStruct

- (MMapStruct)initWithBuffer:(void *)a3 size:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MMapStruct;
  result = [(MMapStruct *)&v7 init];
  if (result)
  {
    result->_buffer = a3;
    result->_size = a4;
  }

  return result;
}

+ (id)mMapStructWithFilepath:(id)a3
{
  v3 = a3;
  v4 = open([v3 UTF8String], 0);
  if (v4 < 0)
  {
    v10 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[MMapStruct mMapStructWithFilepath:];
    }
  }

  else
  {
    v5 = v4;
    memset(&v13, 0, sizeof(v13));
    if (fstat(v4, &v13) < 0)
    {
      v11 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[MMapStruct mMapStructWithFilepath:];
      }
    }

    else
    {
      st_size = v13.st_size;
      v7 = mmap(0, v13.st_size, 1, 1, v5, 0);
      if (v7 != -1)
      {
        v8 = v7;
        close(v5);
        v9 = [[MMapStruct alloc] initWithBuffer:v8 size:st_size];
        goto LABEL_14;
      }

      v11 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[MMapStruct mMapStructWithFilepath:];
      }
    }

    close(v5);
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)dealloc
{
  munmap(self->_buffer, self->_size);
  v3.receiver = self;
  v3.super_class = MMapStruct;
  [(MMapStruct *)&v3 dealloc];
}

+ (void)mMapStructWithFilepath:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26B806000, v2, v3, "mmap failed. File path=%@ errno:%d(%s)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)mMapStructWithFilepath:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26B806000, v2, v3, "fstat failed. MMap process stopped. File path=%@ errno:%d(%s)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)mMapStructWithFilepath:.cold.3()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26B806000, v2, v3, "open file failed. MMap process stopped. File path=%@ errno:%d(%s)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

@end