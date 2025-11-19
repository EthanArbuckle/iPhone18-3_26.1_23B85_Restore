@interface TSWPTopicNumberHintEntry
- (BOOL)isEqual:(id)a3;
- (TSWPTopicNumberHintEntry)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSWPTopicNumberHintEntry

- (TSWPTopicNumberHintEntry)init
{
  v14.receiver = self;
  v14.super_class = TSWPTopicNumberHintEntry;
  v2 = [(TSWPTopicNumberHintEntry *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = objc_msgSend_initWithCapacity_(v3, v4, 9);
    v6 = 9;
    do
    {
      v7 = objc_opt_new();
      objc_msgSend_addObject_(v5, v8, v7);

      --v6;
    }

    while (v6);
    v11 = objc_msgSend_copy(v5, v9, v10);
    topicNumbers = v2->_topicNumbers;
    v2->_topicNumbers = v11;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_topicNumbers(self, v6, v7);
      v11 = objc_msgSend_topicNumbers(v5, v9, v10);
      isEqual = objc_msgSend_isEqual_(v8, v12, v11);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = objc_msgSend_initWithArray_copyItems_(v5, v6, self->_topicNumbers, 1);
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

@end