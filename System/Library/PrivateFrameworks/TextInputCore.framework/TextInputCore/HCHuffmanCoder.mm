@interface HCHuffmanCoder
+ (id)coderFromBurstTrieFile:(id)a3 indexTableFile:(id)a4;
+ (id)coderMatchingName:(id)a3 locale:(id)a4;
- (HCHuffmanCoder)initWithBurstTrie:(id)a3 indexTable:(id)a4;
- (NSUUID)versionUUID;
- (id)codeForKey:(id)a3;
- (id)stringCodeForKey:(id)a3;
- (unint64_t)count;
@end

@implementation HCHuffmanCoder

- (id)stringCodeForKey:(id)a3
{
  v3 = [(HCHuffmanCoder *)self codeForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedLongLongValue];
    v6 = vcvtpd_u64_f64(log2(v5));
    for (i = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:v6]; v6; --v6)
    {
      if (v5)
      {
        v8 = @"1";
      }

      else
      {
        v8 = @"0";
      }

      [i insertString:v8 atIndex:0];
      v5 >>= 1;
    }

    v9 = [i copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)codeForKey:(id)a3
{
  v4 = a3;
  burstTrie = self->_burstTrie;
  if (burstTrie && self->_indexTable)
  {
    v6 = [(HCBurstTrie *)burstTrie payloadForKey:v4];
    v7 = v6;
    if (v6)
    {
      v8 = -[HCIndexTable codeAtIndex:](self->_indexTable, "codeAtIndex:", [v6 unsignedIntValue] - 1);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSUUID)versionUUID
{
  v2 = [(HCHuffmanCoder *)self indexTable];
  v3 = [v2 versionUUID];

  return v3;
}

- (unint64_t)count
{
  v3 = [(HCBurstTrie *)self->_burstTrie count];
  [(HCIndexTable *)self->_indexTable count];
  return v3;
}

- (HCHuffmanCoder)initWithBurstTrie:(id)a3 indexTable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HCHuffmanCoder;
  v9 = [(HCHuffmanCoder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_burstTrie, a3);
    objc_storeStrong(&v10->_indexTable, a4);
  }

  return v10;
}

+ (id)coderFromBurstTrieFile:(id)a3 indexTableFile:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [HCBurstTrie burstTrieFromFile:a3];
  v7 = [HCIndexTable indexTableFromFile:v5];

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "+[HCHuffmanCoder coderFromBurstTrieFile:indexTableFile:]";
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Could not load the huffman coder from the supplied file paths.", &v12, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [[HCHuffmanCoder alloc] initWithBurstTrie:v6 indexTable:v7];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)coderMatchingName:(id)a3 locale:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5808;
  v21 = __Block_byref_object_dispose__5809;
  v22 = 0;
  v16 = MEMORY[0x277D85DD0];
  LDEnumerateAssetDataItems();
  if (v18[5])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.triemap", v6, v16, 3221225472, __43__HCHuffmanCoder_coderMatchingName_locale___block_invoke, &unk_278730200, &v17];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.htbl", v6];
    v10 = [v18[5] URLByAppendingPathComponent:v8];
    v11 = [v18[5] URLByAppendingPathComponent:v9];
    v12 = [a1 coderFromBurstTrieFile:v10 indexTableFile:v11];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = [v7 localeIdentifier];
      *buf = 136315394;
      v24 = "+[HCHuffmanCoder coderMatchingName:locale:]";
      v25 = 2112;
      v26 = v15;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Couldn't find a Huffman coder for locale: '%@'", buf, 0x16u);
    }

    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __43__HCHuffmanCoder_coderMatchingName_locale___block_invoke(uint64_t a1, const void *a2, int a3, int a4, CFStringRef theString1, _BYTE *a6)
{
  if (CFStringCompare(theString1, @"DifferentialPrivacyHuffmanCoder", 0) == kCFCompareEqualTo)
  {
    v9 = CFRetain(a2);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a6 = 1;
  }
}

@end