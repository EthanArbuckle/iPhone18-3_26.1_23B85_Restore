@interface NSCoder(SWCSecureCodingWorkaround)
- (id)swc_decodeObjectOfClass:()SWCSecureCodingWorkaround forKey:;
- (id)swc_decodeObjectOfClasses:()SWCSecureCodingWorkaround forKey:;
@end

@implementation NSCoder(SWCSecureCodingWorkaround)

- (id)swc_decodeObjectOfClass:()SWCSecureCodingWorkaround forKey:
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{a3, 0}];
  v9 = [a1 decodeObjectOfClasses:v8 forKey:v6];

  objc_autoreleasePoolPop(v7);
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16[0] = @"Line";
    v16[1] = @"Function";
    v17[0] = &unk_2877A7420;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSCoder(SWCSecureCodingWorkaround) swc_decodeObjectOfClass:forKey:]"];
    v17[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v13 = [v10 initWithDomain:*MEMORY[0x277CCA050] code:4864 userInfo:v12];
    [a1 failWithError:v13];

    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)swc_decodeObjectOfClasses:()SWCSecureCodingWorkaround forKey:
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 decodeObjectOfClasses:v6 forKey:v7];
  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v11)
    {
      v12 = *v21;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      v24[0] = @"Line";
      v24[1] = @"Function";
      v25[0] = &unk_2877A7438;
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[NSCoder(SWCSecureCodingWorkaround) swc_decodeObjectOfClasses:forKey:]", v20}];
      v25[1] = v10;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v17 = [v15 initWithDomain:*MEMORY[0x277CCA050] code:4864 userInfo:v16];
      [a1 failWithError:v17];

      v9 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

@end