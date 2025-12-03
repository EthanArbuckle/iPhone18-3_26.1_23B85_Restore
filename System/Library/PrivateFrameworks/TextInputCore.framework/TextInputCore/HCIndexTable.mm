@interface HCIndexTable
+ (id)indexTableFromFile:(id)file;
- (BOOL)isValid;
- (BOOL)writeToFile:(id)file;
- (HCIndexTable)init;
- (HCIndexTable)initWithHuffmanCodesMemoryMappedData:(id)data;
- (NSUUID)versionUUID;
- (const)fileHeader;
- (const)huffmanCodes;
- (id).cxx_construct;
- (id)codeAtIndex:(unint64_t)index;
- (unint64_t)count;
@end

@implementation HCIndexTable

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (const)huffmanCodes
{
  [(NSData *)self->_huffmanCodesMemoryMappedData length];
  [(HCIndexTable *)self count];
  [(NSData *)self->_huffmanCodesMemoryMappedData length];
  return ([(NSData *)self->_huffmanCodesMemoryMappedData bytes]+ 24);
}

- (NSUUID)versionUUID
{
  fileHeader = [(HCIndexTable *)self fileHeader];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:fileHeader->var2];

  return v3;
}

- (const)fileHeader
{
  [(NSData *)self->_huffmanCodesMemoryMappedData length];
  huffmanCodesMemoryMappedData = self->_huffmanCodesMemoryMappedData;

  return [(NSData *)huffmanCodesMemoryMappedData bytes];
}

- (BOOL)writeToFile:(id)file
{
  v27 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [fileCopy path];
  [defaultManager createFileAtPath:path contents:0 attributes:0];

  v7 = MEMORY[0x277CCA9F8];
  path2 = [fileCopy path];
  v9 = [v7 fileHandleForWritingAtPath:path2];

  if (v9)
  {
    fileHeader = [(HCIndexTable *)self fileHeader];
    v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:fileHeader length:24 freeWhenDone:0];
    v22 = 0;
    [v9 writeData:v11 error:&v22];
    v12 = v22;
    if (v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v12 localizedDescription];
      *buf = 136315394;
      v24 = "[HCIndexTable writeToFile:]";
      v25 = 2112;
      v26 = localizedDescription;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  %@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:self->_mutableHuffmanCodes.__begin_ length:self->_mutableHuffmanCodes.__end_ - self->_mutableHuffmanCodes.__begin_ freeWhenDone:0];
    v21 = 0;
    [v9 writeData:v13 error:&v21];
    v14 = v21;

    v15 = v14 == 0;
    if (v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      localizedDescription2 = [v14 localizedDescription];
      *buf = 136315394;
      v24 = "[HCIndexTable writeToFile:]";
      v25 = 2112;
      v26 = localizedDescription2;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      path3 = [fileCopy path];
      *buf = 136315394;
      v24 = "[HCIndexTable writeToFile:]";
      v25 = 2112;
      v26 = path3;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Couldn't open file '%@' for writing.", buf, 0x16u);
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)codeAtIndex:(unint64_t)index
{
  if ([(HCIndexTable *)self count]- 1 >= index)
  {
    huffmanCodes = [(HCIndexTable *)self huffmanCodes];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:huffmanCodes[index]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)count
{
  huffmanCodesMemoryMappedData = [(HCIndexTable *)self huffmanCodesMemoryMappedData];
  v3 = [huffmanCodesMemoryMappedData length] >> 3;

  return v3;
}

- (BOOL)isValid
{
  {
    selfCopy = self;
    self = selfCopy;
    if (v6)
    {
      [HCIndexTable isValid]::staticHeader = 1;
      [HCIndexTable isValid]::staticHeader = 1;
      self = selfCopy;
    }
  }

  fileHeader = [(HCIndexTable *)self fileHeader];
  if ([HCIndexTable isValid]::staticHeader)
  {
    v3 = -20308979;
  }

  else
  {
    v3 = 0;
  }

  return fileHeader->var1 == [HCIndexTable isValid]::staticHeader && fileHeader->var0 == v3;
}

- (HCIndexTable)initWithHuffmanCodesMemoryMappedData:(id)data
{
  dataCopy = data;
  v5 = [(HCIndexTable *)self init];
  if (v5)
  {
    v6 = [dataCopy copy];
    huffmanCodesMemoryMappedData = v5->_huffmanCodesMemoryMappedData;
    v5->_huffmanCodesMemoryMappedData = v6;
  }

  if ([(HCIndexTable *)v5 isValid])
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9;
}

- (HCIndexTable)init
{
  v7.receiver = self;
  v7.super_class = HCIndexTable;
  v2 = [(HCIndexTable *)&v7 init];
  v3 = v2;
  if (v2)
  {
    p_mutableHuffmanCodes = &v2->_mutableHuffmanCodes;
    begin = v2->_mutableHuffmanCodes.__begin_;
    if (begin)
    {
      v3->_mutableHuffmanCodes.__end_ = begin;
      operator delete(begin);
    }

    p_mutableHuffmanCodes->__begin_ = 0;
    v3->_mutableHuffmanCodes.__end_ = 0;
    v3->_mutableHuffmanCodes.__cap_ = 0;
  }

  return v3;
}

+ (id)indexTableFromFile:(id)file
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  path = [file path];
  v11 = 0;
  v5 = [v3 dataWithContentsOfFile:path options:8 error:&v11];
  v6 = v11;

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      *buf = 136315394;
      v13 = "+[HCIndexTable indexTableFromFile:]";
      v14 = 2112;
      v15 = localizedDescription;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Error while loading index map from file: '%@'", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = [[HCIndexTable alloc] initWithHuffmanCodesMemoryMappedData:v5];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end