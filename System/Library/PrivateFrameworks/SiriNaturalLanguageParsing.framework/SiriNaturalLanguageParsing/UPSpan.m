@interface UPSpan
+ (unint64_t)_getSpanTypeFromProtobufSpan:(id)a3;
- (UPSpan)initWithProtobufSpan:(id)a3 nonWhitespaceTokenIndexes:(id)a4 error:(id *)a5;
- (UPSpan)initWithRange:(_NSRange)a3 type:(unint64_t)a4 category:(id)a5 sharedEntityGraph:(id)a6;
- (_NSRange)range;
- (id)description;
@end

@implementation UPSpan

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.location = [(UPSpan *)self range];
  v4 = NSStringFromRange(v10);
  v5 = [(UPSpan *)self type];
  v6 = [(UPSpan *)self category];
  v7 = [v3 stringWithFormat:@"{UPSpan range: %@  type: %lu ; category: %@}", v4, v5, v6];;

  return v7;
}

- (UPSpan)initWithProtobufSpan:(id)a3 nonWhitespaceTokenIndexes:(id)a4 error:(id *)a5
{
  v43[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 hasStartTokenIndex] && (objc_msgSend(v8, "hasEndTokenIndex") & 1) != 0)
  {
    v10 = [v8 startTokenIndex];
    if (v10 >= [v8 endTokenIndex])
    {
      if (a5)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid span: start token index (%u) >= end token index (%u)", objc_msgSend(v8, "startTokenIndex"), objc_msgSend(v8, "endTokenIndex")];
        v23 = MEMORY[0x277CCA9B8];
        v40 = *MEMORY[0x277CCA450];
        v41 = v19;
        v24 = MEMORY[0x277CBEAC0];
        v25 = &v41;
        v26 = &v40;
LABEL_15:
        v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
        *a5 = [v23 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v27];

        v21 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = [UPSpan _getSpanTypeFromProtobufSpan:v8];
      v12 = [v8 startTokenIndex];
      v13 = [v8 endTokenIndex];
      if ([v9 containsIndex:v12])
      {
        v14 = (v13 - 1);
        if ([v9 containsIndex:v14])
        {
          v15 = [v9 countOfIndexesInRange:{0, v12}];
          v16 = [v9 countOfIndexesInRange:{0, v14 + 1}];
          v17 = SNLPOSLoggerForCategory(3);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109888;
            v31 = [v8 startTokenIndex];
            v32 = 1024;
            v33 = [v8 endTokenIndex];
            v34 = 2048;
            v35 = v15;
            v36 = 2048;
            v37 = v16;
            _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_DEBUG, "Converted protobuf token indexes (%u -> %u) to non-whitespace token indexes (%lu -> %lu)", buf, 0x22u);
          }

          v18 = v16 - v15;
          v19 = [v8 label];
          v20 = [v8 usoGraph];
          self = [(UPSpan *)self initWithRange:v15 type:v18 category:v11 sharedEntityGraph:v19, v20];

          v21 = self;
          goto LABEL_16;
        }
      }

      if (a5)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: discarding data detector matching span not aligned with non-whitespace tokens (%u -> %u)", objc_msgSend(v8, "startTokenIndex"), objc_msgSend(v8, "endTokenIndex")];
        v23 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA450];
        v39 = v19;
        v24 = MEMORY[0x277CBEAC0];
        v25 = &v39;
        v26 = &v38;
        goto LABEL_15;
      }
    }

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  if (!a5)
  {
    goto LABEL_17;
  }

  v22 = MEMORY[0x277CCA9B8];
  v42 = *MEMORY[0x277CCA450];
  v43[0] = @"protobuf message is missing a start/end index";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  [v22 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v19];
  *a5 = v21 = 0;
LABEL_16:

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (UPSpan)initWithRange:(_NSRange)a3 type:(unint64_t)a4 category:(id)a5 sharedEntityGraph:(id)a6
{
  length = a3.length;
  location = a3.location;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = UPSpan;
  v14 = [(UPSpan *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_range.location = location;
    v14->_range.length = length;
    v14->_type = a4;
    objc_storeStrong(&v14->_category, a5);
    objc_storeStrong(&v15->_sharedEntityGraph, a6);
  }

  return v15;
}

+ (unint64_t)_getSpanTypeFromProtobufSpan:(id)a3
{
  v3 = a3;
  if (![v3 matcherNamesCount])
  {
    v4 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "No matcher names provided - type property will be UPSpanTypeNone", buf, 2u);
    }
  }

  if ([v3 matcherNamesCount])
  {
    v5 = 1;
    do
    {
      v6 = [v3 matcherNamesAtIndex:v5 - 1];
      if (v6)
      {
        if (v6 == 2)
        {
          v7 = 0;
          v8 = 4;
        }

        else
        {
          v9 = SNLPOSLoggerForCategory(3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v13 = 0;
            _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "Span not recognized by the span matchers - type property will be UPSpanTypeNone", v13, 2u);
          }

          v8 = 0;
          v7 = 1;
        }
      }

      else
      {
        v7 = 0;
        v8 = 2;
      }

      v10 = [v3 matcherNamesCount];
      if (!v7)
      {
        break;
      }
    }

    while (v10 > v5++);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end