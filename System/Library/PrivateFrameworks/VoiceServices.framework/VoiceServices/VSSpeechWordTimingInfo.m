@interface VSSpeechWordTimingInfo
+ (id)utf16TimingInfoWithUTF8Range:(id)a3 withText:(id)a4;
+ (id)wordTimingInfoFrom:(id)a3 timestamps:(id)a4;
+ (unint64_t)extraBytesFromUTF8ToUTF16With:(const char *)a3 totalLength:(unint64_t)a4 begin:(unint64_t)a5 end:(unint64_t)a6;
+ (void)adjustWordTimingInfo:(id)a3 forContext:(id)a4;
- (BOOL)isEqual:(id)a3;
- (VSSpeechWordTimingInfo)initWithCoder:(id)a3;
- (_NSRange)textRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSSpeechWordTimingInfo

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  startTime = self->_startTime;
  v4 = NSStringFromRange(self->_textRange);
  v5 = [v2 stringWithFormat:@"<VSSpeechWordTimingInfo>{startTime = %.3f textRange = %@}", *&startTime, v4];;

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  [(VSSpeechWordTimingInfo *)self startTime];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];

  v6 = [(VSSpeechWordTimingInfo *)self textRange]- v5 + 32 * v5;
  [(VSSpeechWordTimingInfo *)self textRange];
  return v7 - v6 + 32 * v6 + 29791;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    [v5 startTime];
    v7 = v6;
    [(VSSpeechWordTimingInfo *)self startTime];
    if (v7 == v8)
    {
      v9 = [v5 textRange];
      v11 = v10;
      v14 = v9 == [(VSSpeechWordTimingInfo *)self textRange]&& v11 == v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VSSpeechWordTimingInfo allocWithZone:?]];
  [(VSSpeechWordTimingInfo *)self startTime];
  [(VSSpeechWordTimingInfo *)v4 setStartTime:?];
  v5 = [(VSSpeechWordTimingInfo *)self textRange];
  [(VSSpeechWordTimingInfo *)v4 setTextRange:v5, v6];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  startTime = self->_startTime;
  v5 = a3;
  [v5 encodeDouble:@"_startTime" forKey:startTime];
  v6 = [MEMORY[0x277CCAE60] valueWithRange:{self->_textRange.location, self->_textRange.length}];
  [v5 encodeObject:v6 forKey:@"_textRange"];
}

- (VSSpeechWordTimingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VSSpeechWordTimingInfo;
  v5 = [(VSSpeechWordTimingInfo *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_startTime"];
    v5->_startTime = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_textRange"];
    v5->_textRange.location = [v7 rangeValue];
    v5->_textRange.length = v8;
  }

  return v5;
}

+ (void)adjustWordTimingInfo:(id)a3 forContext:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] vs_markerStringForContext:a4];
  v7 = [v6 length];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 textRange] - v7;
        [v13 textRange];
        [v13 setTextRange:{v14, v15}];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)utf16TimingInfoWithUTF8Range:(id)a3 withText:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33 = [MEMORY[0x277CBEB18] array];
  v8 = [v7 UTF8String];
  v9 = [v7 lengthOfBytesUsingEncoding:4];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v32)
  {
    v10 = 0;
    v11 = 0;
    v31 = *v35;
    v29 = v7;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = objc_alloc_init(VSSpeechWordTimingInfo);
        [v13 startTime];
        [(VSSpeechWordTimingInfo *)v14 setStartTime:?];
        v15 = [a1 extraBytesFromUTF8ToUTF16With:v8 totalLength:v9 begin:v10 end:{objc_msgSend(v13, "textRange")}];
        if (v15 == -1 || (v16 = v15, v17 = [v13 textRange], v18 = objc_msgSend(v13, "textRange"), objc_msgSend(v13, "textRange"), v20 = objc_msgSend(a1, "extraBytesFromUTF8ToUTF16With:totalLength:begin:end:", v8, v9, v17, v19 + v18), v20 == -1))
        {

          v7 = v29;
          goto LABEL_12;
        }

        v21 = v20;
        v22 = v16 + v11;
        v23 = [v13 textRange] - v22;
        [v13 textRange];
        [(VSSpeechWordTimingInfo *)v14 setTextRange:v23, v24 - v21];
        v11 = v22 + v21;
        [v33 addObject:v14];
        v25 = [v13 textRange];
        [v13 textRange];
        v10 = v26 + v25;
      }

      v7 = v29;
      v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v27 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (unint64_t)extraBytesFromUTF8ToUTF16With:(const char *)a3 totalLength:(unint64_t)a4 begin:(unint64_t)a5 end:(unint64_t)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a6 - a5;
  if (a6 <= a5)
  {
    result = 0;
  }

  else if (a6 <= a4)
  {
    result = 0;
    v11 = &a3[a5];
    do
    {
      v12 = *v11++;
      v13 = v12 & 0xE0;
      v14 = v12 & 0xF0;
      if ((v12 & 0xF8) == 0xF0)
      {
        v15 = result + 2;
      }

      else
      {
        v15 = result;
      }

      if (v14 == 224)
      {
        v15 = result + 2;
      }

      if (v13 == 192)
      {
        ++result;
      }

      else
      {
        result = v15;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218240;
      v18 = a6;
      v19 = 2048;
      v20 = a4;
      _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "Out of word boundary: %ld is greater than %ld", &v17, 0x16u);
    }

    result = -1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)wordTimingInfoFrom:(id)a3 timestamps:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = objc_alloc_init(VSSpeechWordTimingInfo);
        [v15 doubleValue];
        [(VSSpeechWordTimingInfo *)v16 setStartTime:?];
        if (v12 >= [v5 length])
        {

          goto LABEL_18;
        }

        for (j = v12; j < [v5 length]; ++j)
        {
          if (![v7 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", j)}])
          {
            break;
          }
        }

        v12 = j;
        if (j < [v5 length])
        {
          v12 = j;
          do
          {
            if ([v7 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", v12)}])
            {
              break;
            }

            ++v12;
          }

          while (v12 < [v5 length]);
        }

        [(VSSpeechWordTimingInfo *)v16 setTextRange:j, v12 - j];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v18 = [v8 lastObject];
  v19 = [v18 textRange];
  if (v19 + v20 < [v5 length])
  {
    [v18 setTextRange:{objc_msgSend(v18, "textRange"), objc_msgSend(v5, "length") - objc_msgSend(v18, "textRange")}];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

@end