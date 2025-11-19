@interface UAFileChunkInputStream
- (BOOL)hasBytesAvailable;
- (UAFileChunkInputStream)initWithFileHandle:(id)a3 offsetInFile:(id)a4 size:(int64_t)a5;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (void)open;
@end

@implementation UAFileChunkInputStream

- (UAFileChunkInputStream)initWithFileHandle:(id)a3 offsetInFile:(id)a4 size:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = UAFileChunkInputStream;
  v10 = [(UAFileChunkInputStream *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UAFileChunkInputStream *)v10 setFile:v8];
    [(UAFileChunkInputStream *)v11 setChunkOffset:v9];
    [(UAFileChunkInputStream *)v11 setChunkSize:a5];
    [(UAFileChunkInputStream *)v11 setCurrentOffset:v9];
    [(UAFileChunkInputStream *)v11 setReadSize:0];
    [(UAFileChunkInputStream *)v11 setStatus:0];
  }

  return v11;
}

- (BOOL)hasBytesAvailable
{
  v3 = [(UAFileChunkInputStream *)self status];
  if (v3 > 3 || v3 == 1)
  {
    return 0;
  }

  v5 = [(UAFileChunkInputStream *)self readSize];
  return v5 < [(UAFileChunkInputStream *)self chunkSize];
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(UAFileChunkInputStream *)self status]== 5 || [(UAFileChunkInputStream *)self status]== 6 || [(UAFileChunkInputStream *)self status]== 7)
  {
    goto LABEL_15;
  }

  v7 = [(UAFileChunkInputStream *)self readSize];
  if (v7 >= [(UAFileChunkInputStream *)self chunkSize])
  {
    [(UAFileChunkInputStream *)self setStatus:5];
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  [(UAFileChunkInputStream *)self setStatus:3];
  v8 = [(UAFileChunkInputStream *)self chunkSize];
  v9 = [(UAFileChunkInputStream *)self readSize];
  if (v8 - v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v8 - v9;
  }

  v11 = [(UAFileChunkInputStream *)self file];
  objc_sync_enter(v11);
  v12 = [(UAFileChunkInputStream *)self currentOffset];
  v13 = [v12 unsignedLongLongValue];

  v14 = [(UAFileChunkInputStream *)self file];
  v15 = [v14 offsetInFile];

  if (v13 != v15)
  {
    v16 = [(UAFileChunkInputStream *)self file];
    [v16 seekToFileOffset:v13];
  }

  v17 = [(UAFileChunkInputStream *)self file];
  v18 = [v17 fileDescriptor];

  v19 = read(v18, a3, v10);
  [(UAFileChunkInputStream *)self setReadSize:[(UAFileChunkInputStream *)self readSize]+ v19];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19 + v13];
  [(UAFileChunkInputStream *)self setCurrentOffset:v20];

  if (a4 && !v19)
  {
    [(UAFileChunkInputStream *)self setStatus:5];
    [(UAFileChunkInputStream *)self setReadSize:[(UAFileChunkInputStream *)self chunkSize]];
    v19 = 0;
  }

  objc_sync_exit(v11);

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)open
{
  if ([(UAFileChunkInputStream *)self status]!= 6)
  {

    [(UAFileChunkInputStream *)self setStatus:2];
  }
}

@end