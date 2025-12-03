@interface VSSpeechWordTimingInfo
+ (id)utf16TimingInfoWithUTF8Range:(id)range withText:(id)text;
+ (id)wordTimingInfoFrom:(id)from timestamps:(id)timestamps;
+ (unint64_t)extraBytesFromUTF8ToUTF16With:(const char *)with totalLength:(unint64_t)length begin:(unint64_t)begin end:(unint64_t)end;
+ (void)adjustWordTimingInfo:(id)info forContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (VSSpeechWordTimingInfo)initWithCoder:(id)coder;
- (_NSRange)textRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    [v5 startTime];
    v7 = v6;
    [(VSSpeechWordTimingInfo *)self startTime];
    if (v7 == v8)
    {
      textRange = [v5 textRange];
      v11 = v10;
      v14 = textRange == [(VSSpeechWordTimingInfo *)self textRange]&& v11 == v12;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VSSpeechWordTimingInfo allocWithZone:?]];
  [(VSSpeechWordTimingInfo *)self startTime];
  [(VSSpeechWordTimingInfo *)v4 setStartTime:?];
  textRange = [(VSSpeechWordTimingInfo *)self textRange];
  [(VSSpeechWordTimingInfo *)v4 setTextRange:textRange, v6];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  startTime = self->_startTime;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_startTime" forKey:startTime];
  v6 = [MEMORY[0x277CCAE60] valueWithRange:{self->_textRange.location, self->_textRange.length}];
  [coderCopy encodeObject:v6 forKey:@"_textRange"];
}

- (VSSpeechWordTimingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VSSpeechWordTimingInfo;
  v5 = [(VSSpeechWordTimingInfo *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_startTime"];
    v5->_startTime = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_textRange"];
    v5->_textRange.location = [v7 rangeValue];
    v5->_textRange.length = v8;
  }

  return v5;
}

+ (void)adjustWordTimingInfo:(id)info forContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = [MEMORY[0x277CCACA8] vs_markerStringForContext:context];
  v7 = [v6 length];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = infoCopy;
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

+ (id)utf16TimingInfoWithUTF8Range:(id)range withText:(id)text
{
  v39 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  textCopy = text;
  array = [MEMORY[0x277CBEB18] array];
  uTF8String = [textCopy UTF8String];
  v9 = [textCopy lengthOfBytesUsingEncoding:4];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = rangeCopy;
  v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v32)
  {
    v10 = 0;
    v11 = 0;
    v31 = *v35;
    v29 = textCopy;
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
        v15 = [self extraBytesFromUTF8ToUTF16With:uTF8String totalLength:v9 begin:v10 end:{objc_msgSend(v13, "textRange")}];
        if (v15 == -1 || (v16 = v15, v17 = [v13 textRange], v18 = objc_msgSend(v13, "textRange"), objc_msgSend(v13, "textRange"), v20 = objc_msgSend(self, "extraBytesFromUTF8ToUTF16With:totalLength:begin:end:", uTF8String, v9, v17, v19 + v18), v20 == -1))
        {

          textCopy = v29;
          goto LABEL_12;
        }

        v21 = v20;
        v22 = v16 + v11;
        v23 = [v13 textRange] - v22;
        [v13 textRange];
        [(VSSpeechWordTimingInfo *)v14 setTextRange:v23, v24 - v21];
        v11 = v22 + v21;
        [array addObject:v14];
        textRange = [v13 textRange];
        [v13 textRange];
        v10 = v26 + textRange;
      }

      textCopy = v29;
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

  return array;
}

+ (unint64_t)extraBytesFromUTF8ToUTF16With:(const char *)with totalLength:(unint64_t)length begin:(unint64_t)begin end:(unint64_t)end
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = end - begin;
  if (end <= begin)
  {
    result = 0;
  }

  else if (end <= length)
  {
    result = 0;
    v11 = &with[begin];
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
      endCopy = end;
      v19 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_272850000, v9, OS_LOG_TYPE_ERROR, "Out of word boundary: %ld is greater than %ld", &v17, 0x16u);
    }

    result = -1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)wordTimingInfoFrom:(id)from timestamps:(id)timestamps
{
  v28 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  timestampsCopy = timestamps;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = timestampsCopy;
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
        if (v12 >= [fromCopy length])
        {

          goto LABEL_18;
        }

        for (j = v12; j < [fromCopy length]; ++j)
        {
          if (![whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(fromCopy, "characterAtIndex:", j)}])
          {
            break;
          }
        }

        v12 = j;
        if (j < [fromCopy length])
        {
          v12 = j;
          do
          {
            if ([whitespaceAndNewlineCharacterSet characterIsMember:{objc_msgSend(fromCopy, "characterAtIndex:", v12)}])
            {
              break;
            }

            ++v12;
          }

          while (v12 < [fromCopy length]);
        }

        [(VSSpeechWordTimingInfo *)v16 setTextRange:j, v12 - j];
        [array addObject:v16];
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

  lastObject = [array lastObject];
  textRange = [lastObject textRange];
  if (textRange + v20 < [fromCopy length])
  {
    [lastObject setTextRange:{objc_msgSend(lastObject, "textRange"), objc_msgSend(fromCopy, "length") - objc_msgSend(lastObject, "textRange")}];
  }

  v21 = *MEMORY[0x277D85DE8];

  return array;
}

@end