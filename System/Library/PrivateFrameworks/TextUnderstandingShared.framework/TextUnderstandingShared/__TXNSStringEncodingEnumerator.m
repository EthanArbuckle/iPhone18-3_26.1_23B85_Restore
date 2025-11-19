@interface __TXNSStringEncodingEnumerator
- (__TXNSStringEncodingEnumerator)initWithString:(id)a3 encoding:(unint64_t)a4 nullTerminated:(BOOL)a5;
- (id)nextObject;
- (id)nullTerminationIfNeeded;
@end

@implementation __TXNSStringEncodingEnumerator

- (id)nextObject
{
  v2 = MEMORY[0x28223BE20](self);
  v3 = v2;
  v16 = *MEMORY[0x277D85DE8];
  v4 = (v2 + 24);
  if (!*(v2 + 32))
  {
    v5 = [v2 nullTerminationIfNeeded];
LABEL_7:
    v6 = v5;
    goto LABEL_16;
  }

  if (*(v2 + 40) == 1)
  {
    *(v2 + 40) = 0;
    if (qword_2806D0D18 != -1)
    {
      dispatch_once(&qword_2806D0D18, &unk_287F04C80);
    }

    v5 = qword_2806D0D10;
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  bzero(v15, 0x1000uLL);
  v14 = 0;
  v13 = 0uLL;
  if ([*(v3 + 8) getBytes:v15 maxLength:4096 usedLength:&v14 encoding:*(v3 + 16) options:0 range:*v4 remainingRange:{v4[1], &v13}])
  {
    if (!*(&v13 + 1))
    {
      v8 = v14;
      if (v14 <= 0xFFF && *(v3 + 41) == 1)
      {
        *(v3 + 41) = 0;
        v14 = v8 + 1;
        v15[v8] = 0;
      }
    }

    *v4 = v13;
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = [v9 initWithBytes:v15 length:v14];
  }

  else
  {
    v10 = [v3 nullTerminationIfNeeded];
  }

  v6 = v10;
  objc_autoreleasePoolPop(v7);
LABEL_16:
  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)nullTerminationIfNeeded
{
  if (self->_needsNullTermination)
  {
    self->_needsNullTermination = 0;
    v3 = sub_26EF9A658();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (__TXNSStringEncodingEnumerator)initWithString:(id)a3 encoding:(unint64_t)a4 nullTerminated:(BOOL)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = __TXNSStringEncodingEnumerator;
  v10 = [(__TXNSStringEncodingEnumerator *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_string, a3);
    v11->_encoding = a4;
    v12 = [v9 length];
    v11->_remaining.location = 0;
    v11->_remaining.length = v12;
    v11->_needsBOM = a4 == 10;
    v11->_needsNullTermination = a5;
  }

  return v11;
}

@end