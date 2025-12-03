@interface TSWPStorageChildEnumerator
- (TSWPStorageChildEnumerator)initWithStorage:(id)storage range:(_NSRange)range;
- (id)nextObject;
- (void)dealloc;
@end

@implementation TSWPStorageChildEnumerator

- (TSWPStorageChildEnumerator)initWithStorage:(id)storage range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = TSWPStorageChildEnumerator;
  v7 = [(TSWPStorageChildEnumerator *)&v9 init];
  if (v7)
  {
    v7->_storage = storage;
    v7->_charRange.location = location;
    v7->_charRange.length = length;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPStorageChildEnumerator;
  [(TSWPStorageChildEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  if (!self->_charOffsetArray)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_charOffsetArray = v3;
    length = self->_charRange.length;
    location = self->_charRange.location;
    v4 = [(TSWPStorage *)self->_storage attachmentIndexRangeForTextRange:?];
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = 0;
      v9 = 1;
      do
      {
        v44[0] = 0x7FFFFFFFFFFFFFFFLL;
        v10 = [(TSWPStorage *)self->_storage attachmentAtAttachmentIndex:v8 + v6 outCharIndex:v44];
        if (v10)
        {
          v11 = v10;
          v12 = objc_alloc(MEMORY[0x277CCABB0]);
          v13 = [v12 initWithUnsignedInteger:v44[0]];
          v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v11, v13, 0}];
          [(NSArray *)v3 addObject:v14];
        }

        v8 = v9;
        v15 = v7 > v9++;
      }

      while (v15);
    }

    v16 = [(TSWPStorage *)self->_storage footnoteRangeForTextRange:location, length];
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v20 = 0;
      v21 = 1;
      do
      {
        v44[0] = 0x7FFFFFFFFFFFFFFFLL;
        v22 = [(TSWPStorage *)self->_storage footnoteAtFootnoteIndex:v20 + v18 outCharIndex:v44];
        if (v22)
        {
          v23 = v22;
          v24 = objc_alloc(MEMORY[0x277CCABB0]);
          v25 = [v24 initWithUnsignedInteger:v44[0]];
          v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v23, v25, 0}];
          [(NSArray *)v3 addObject:v26];
        }

        v20 = v21;
        v15 = v19 > v21++;
      }

      while (v15);
    }

    sectionCount = [(TSWPStorage *)self->_storage sectionCount];
    if (sectionCount)
    {
      v28 = sectionCount;
      v29 = 0;
      v30 = 1;
      do
      {
        v31 = [(TSWPStorage *)self->_storage sectionAtSectionIndex:v29 effectiveRange:v44];
        if (v31)
        {
          v32 = v31;
          v33 = objc_alloc(MEMORY[0x277CCABB0]);
          v34 = [v33 initWithUnsignedInteger:v44[0]];
          v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v32, v34, 0}];
          [(NSArray *)v3 addObject:v35];
        }

        v29 = v30;
        v15 = v28 > v30++;
      }

      while (v15);
    }

    [(NSArray *)v3 sortUsingFunction:comparePairs context:0];
  }

  if (!self->_storage)
  {
    return 0;
  }

  while (1)
  {
    v36 = [(NSArray *)self->_charOffsetArray count];
    index = self->_index;
    if (v36 <= index)
    {

      v39 = 0;
      self->_storage = 0;
      return v39;
    }

    charOffsetArray = self->_charOffsetArray;
    self->_index = index + 1;
    v39 = [-[NSArray objectAtIndexedSubscript:](charOffsetArray "objectAtIndexedSubscript:{"objectAtIndexedSubscript:", 0}")];
    if ([v39 conformsToProtocol:&unk_287E667A0])
    {
      return v39;
    }

    if ([v39 isDrawable])
    {
      return [v39 drawable];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (!self->_storage)
    {
      return 0;
    }
  }

  return [v39 containedStorage];
}

@end