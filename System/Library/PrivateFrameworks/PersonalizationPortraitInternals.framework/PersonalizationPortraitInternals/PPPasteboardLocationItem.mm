@interface PPPasteboardLocationItem
- (unint64_t)memoryFootprintEstimate;
@end

@implementation PPPasteboardLocationItem

- (unint64_t)memoryFootprintEstimate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = __51__PPPasteboardLocationItem_memoryFootprintEstimate__block_invoke(self->_text);
  v4 = __51__PPPasteboardLocationItem_memoryFootprintEstimate__block_invoke(self->_bundleIdentifier) + v3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSDictionary *)self->_addressComponents objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 += __51__PPPasteboardLocationItem_memoryFootprintEstimate__block_invoke(*(*(&v12 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __51__PPPasteboardLocationItem_memoryFootprintEstimate__block_invoke(void *a1)
{
  v1 = a1;
  if (malloc_size(v1))
  {
    v4 = 0;
    if ([v1 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:&v4])
    {
      v2 = v4;
    }

    else
    {
      v2 = [v1 lengthOfBytesUsingEncoding:10];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end