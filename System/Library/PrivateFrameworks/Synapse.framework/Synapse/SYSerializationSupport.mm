@interface SYSerializationSupport
+ (id)archiveDataFromData:(id)a3 formatIdentifier:(unsigned int)a4 majorVersion:(unsigned __int8)a5 minorVersion:(unsigned __int8)a6;
+ (id)itemDataFromArchiveData:(id)a3 majorVersion:(int64_t *)a4 minorVersion:(int64_t *)a5 error:(id *)a6;
@end

@implementation SYSerializationSupport

+ (id)archiveDataFromData:(id)a3 formatIdentifier:(unsigned int)a4 majorVersion:(unsigned __int8)a5 minorVersion:(unsigned __int8)a6
{
  v11 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  if (!v11)
  {
    [SYSerializationSupport archiveDataFromData:a2 formatIdentifier:a1 majorVersion:? minorVersion:?];
  }

  v12 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v11, "length") + 8}];
  [v12 appendBytes:&v17 length:4];
  [v12 appendBytes:&v16 length:1];
  [v12 appendBytes:&v15 length:1];
  v14 = 8;
  [v12 appendBytes:&v14 length:2];
  if ([v12 length] != 8)
  {
    [SYSerializationSupport archiveDataFromData:a2 formatIdentifier:a1 majorVersion:? minorVersion:?];
  }

  [v12 appendData:v11];

  return v12;
}

+ (id)itemDataFromArchiveData:(id)a3 majorVersion:(int64_t *)a4 minorVersion:(int64_t *)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  if ([v11 length] <= 7)
  {
    goto LABEL_7;
  }

  if ([v11 length] <= 8)
  {
    [SYSerializationSupport itemDataFromArchiveData:a2 majorVersion:a1 minorVersion:? error:?];
  }

  LODWORD(v25[0]) = 0;
  [v11 getBytes:v25 range:{0, 4}];
  if (LODWORD(v25[0]) != -260867735)
  {
LABEL_7:
    v17 = SYFormatErrorMalformed();
    v13 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v23 = 0;
  [v11 getBytes:&v23 + 1 range:{4, 1}];
  [v11 getBytes:&v23 range:{5, 1}];
  v12 = HIBYTE(v23);
  v13 = v23;
  if (HIBYTE(v23) >= 2uLL)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data format is a future or unsupported version: %ld.%ld.", HIBYTE(v23), v23];
    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v15 errorWithDomain:@"com.apple.synapse" code:-123 userInfo:v16];

    goto LABEL_8;
  }

  LOWORD(v25[0]) = 0;
  [v11 getBytes:v25 range:{6, 2}];
  v22 = LOWORD(v25[0]);
  if (LOWORD(v25[0]) < 8uLL || [v11 length] <= v22)
  {
    v17 = SYFormatErrorMalformed();
LABEL_8:
    v18 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [v11 length];
  v18 = [v11 subdataWithRange:{8, objc_msgSend(v11, "length") - 8}];
  v17 = 0;
  if (a4)
  {
LABEL_9:
    *a4 = v12;
  }

LABEL_10:
  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    v19 = v17;
    *a6 = v17;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (void)archiveDataFromData:(uint64_t)a1 formatIdentifier:(uint64_t)a2 majorVersion:minorVersion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYSerializationSupport.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"itemData"}];
}

+ (void)archiveDataFromData:(uint64_t)a1 formatIdentifier:(uint64_t)a2 majorVersion:minorVersion:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYSerializationSupport.m" lineNumber:81 description:@"Header size is wrong."];
}

+ (void)itemDataFromArchiveData:(uint64_t)a1 majorVersion:(uint64_t)a2 minorVersion:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYSerializationSupport.m" lineNumber:103 description:@"Invalid data size"];
}

@end