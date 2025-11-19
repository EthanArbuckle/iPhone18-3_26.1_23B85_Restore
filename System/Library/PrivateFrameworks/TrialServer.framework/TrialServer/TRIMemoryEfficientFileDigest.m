@interface TRIMemoryEfficientFileDigest
+ (id)sha256DigestForFile:(id)a3;
@end

@implementation TRIMemoryEfficientFileDigest

+ (id)sha256DigestForFile:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCA9F8];
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v3];
  v19 = 0;
  v6 = [v4 fileHandleForReadingFromURL:v5 error:&v19];
  v7 = v19;

  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v18 = 0;
      v10 = [v6 readDataUpToLength:0x20000 error:&v18];
      v11 = v18;
      if (!v10)
      {
        break;
      }

      if (![v10 length])
      {

        objc_autoreleasePoolPop(v9);
        v16 = [v8 mutableBytes];
        if (!v16)
        {
          v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
          objc_exception_throw(v17);
        }

        CC_SHA256_Final(v16, &c);
        v13 = v8;
        goto LABEL_12;
      }

      CC_SHA256_Update(&c, [v10 bytes], objc_msgSend(v10, "length"));

      objc_autoreleasePoolPop(v9);
    }

    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v3;
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to read from %{public}@ during digest creation with error %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      c.count[0] = 138543618;
      *&c.count[1] = v3;
      LOWORD(c.hash[1]) = 2114;
      *(&c.hash[1] + 2) = v7;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to create handle for %{public}@ with error %{public}@", &c, 0x16u);
    }
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end