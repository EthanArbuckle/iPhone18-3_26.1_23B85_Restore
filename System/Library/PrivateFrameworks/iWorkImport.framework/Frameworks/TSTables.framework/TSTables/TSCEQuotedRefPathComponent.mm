@interface TSCEQuotedRefPathComponent
- (id)trimmedStringStartingAtWord:(unint64_t)word withPreserveFlags:(BOOL)flags;
- (id)wordAtIndex:(unint64_t)index;
- (void)addRefPathWord:(id)word;
- (void)removeRefPathWordAtIndex:(unint64_t)index;
@end

@implementation TSCEQuotedRefPathComponent

- (void)addRefPathWord:(id)word
{
  wordCopy = word;
  if (wordCopy)
  {
    refPathWords = self->_refPathWords;
    if (!refPathWords)
    {
      v8 = objc_opt_new();
      v9 = self->_refPathWords;
      self->_refPathWords = v8;

      refPathWords = self->_refPathWords;
    }

    objc_msgSend_addObject_(refPathWords, v4, wordCopy, v5, v6);
  }
}

- (void)removeRefPathWordAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_refPathWords, a2, index, v3, v4) > index)
  {
    refPathWords = self->_refPathWords;

    objc_msgSend_removeObjectAtIndex_(refPathWords, v7, index, v8, v9);
  }
}

- (id)wordAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_refPathWords, a2, index, v3, v4) <= index)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_objectAtIndex_(self->_refPathWords, v7, index, v8, v9);
  }

  return v10;
}

- (id)trimmedStringStartingAtWord:(unint64_t)word withPreserveFlags:(BOOL)flags
{
  flagsCopy = flags;
  v34 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_refPathWords, a2, word, flags, v4) <= word)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = self->_refPathWords;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v29, v33, 16);
    if (v15)
    {
      v16 = 0;
      v17 = *v30;
      do
      {
        v18 = 0;
        v28 = v16 + v15;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v9);
          }

          if (v16 >= word)
          {
            v19 = *(*(&v29 + 1) + 8 * v18);
            if (objc_msgSend_length(v8, v11, v12, v13, v14))
            {
              objc_msgSend_appendString_(v8, v20, @" ", v21, v22);
            }

            v23 = objc_msgSend_trimmedStringWithPreserveFlag_(v19, v20, flagsCopy, v21, v22);
            objc_msgSend_appendString_(v8, v24, v23, v25, v26);
          }

          ++v16;
          ++v18;
        }

        while (v15 != v18);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v29, v33, 16);
        v16 = v28;
      }

      while (v15);
    }
  }

  return v8;
}

@end