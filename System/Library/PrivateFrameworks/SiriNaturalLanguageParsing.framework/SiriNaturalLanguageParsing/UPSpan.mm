@interface UPSpan
+ (unint64_t)_getSpanTypeFromProtobufSpan:(id)span;
- (UPSpan)initWithProtobufSpan:(id)span nonWhitespaceTokenIndexes:(id)indexes error:(id *)error;
- (UPSpan)initWithRange:(_NSRange)range type:(unint64_t)type category:(id)category sharedEntityGraph:(id)graph;
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
  type = [(UPSpan *)self type];
  category = [(UPSpan *)self category];
  v7 = [v3 stringWithFormat:@"{UPSpan range: %@  type: %lu ; category: %@}", v4, type, category];;

  return v7;
}

- (UPSpan)initWithProtobufSpan:(id)span nonWhitespaceTokenIndexes:(id)indexes error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  spanCopy = span;
  indexesCopy = indexes;
  if ([spanCopy hasStartTokenIndex] && (objc_msgSend(spanCopy, "hasEndTokenIndex") & 1) != 0)
  {
    startTokenIndex = [spanCopy startTokenIndex];
    if (startTokenIndex >= [spanCopy endTokenIndex])
    {
      if (error)
      {
        label = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid span: start token index (%u) >= end token index (%u)", objc_msgSend(spanCopy, "startTokenIndex"), objc_msgSend(spanCopy, "endTokenIndex")];
        v23 = MEMORY[0x277CCA9B8];
        v40 = *MEMORY[0x277CCA450];
        v41 = label;
        v24 = MEMORY[0x277CBEAC0];
        v25 = &v41;
        v26 = &v40;
LABEL_15:
        v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
        *error = [v23 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:v27];

        selfCopy = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = [UPSpan _getSpanTypeFromProtobufSpan:spanCopy];
      startTokenIndex2 = [spanCopy startTokenIndex];
      endTokenIndex = [spanCopy endTokenIndex];
      if ([indexesCopy containsIndex:startTokenIndex2])
      {
        v14 = (endTokenIndex - 1);
        if ([indexesCopy containsIndex:v14])
        {
          v15 = [indexesCopy countOfIndexesInRange:{0, startTokenIndex2}];
          v16 = [indexesCopy countOfIndexesInRange:{0, v14 + 1}];
          v17 = SNLPOSLoggerForCategory(3);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109888;
            startTokenIndex3 = [spanCopy startTokenIndex];
            v32 = 1024;
            endTokenIndex2 = [spanCopy endTokenIndex];
            v34 = 2048;
            v35 = v15;
            v36 = 2048;
            v37 = v16;
            _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_DEBUG, "Converted protobuf token indexes (%u -> %u) to non-whitespace token indexes (%lu -> %lu)", buf, 0x22u);
          }

          v18 = v16 - v15;
          label = [spanCopy label];
          usoGraph = [spanCopy usoGraph];
          self = [(UPSpan *)self initWithRange:v15 type:v18 category:v11 sharedEntityGraph:label, usoGraph];

          selfCopy = self;
          goto LABEL_16;
        }
      }

      if (error)
      {
        label = [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: discarding data detector matching span not aligned with non-whitespace tokens (%u -> %u)", objc_msgSend(spanCopy, "startTokenIndex"), objc_msgSend(spanCopy, "endTokenIndex")];
        v23 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA450];
        v39 = label;
        v24 = MEMORY[0x277CBEAC0];
        v25 = &v39;
        v26 = &v38;
        goto LABEL_15;
      }
    }

LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  if (!error)
  {
    goto LABEL_17;
  }

  v22 = MEMORY[0x277CCA9B8];
  v42 = *MEMORY[0x277CCA450];
  v43[0] = @"protobuf message is missing a start/end index";
  label = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  [v22 errorWithDomain:@"com.apple.uaapcustomluframework" code:10 userInfo:label];
  *error = selfCopy = 0;
LABEL_16:

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (UPSpan)initWithRange:(_NSRange)range type:(unint64_t)type category:(id)category sharedEntityGraph:(id)graph
{
  length = range.length;
  location = range.location;
  categoryCopy = category;
  graphCopy = graph;
  v17.receiver = self;
  v17.super_class = UPSpan;
  v14 = [(UPSpan *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_range.location = location;
    v14->_range.length = length;
    v14->_type = type;
    objc_storeStrong(&v14->_category, category);
    objc_storeStrong(&v15->_sharedEntityGraph, graph);
  }

  return v15;
}

+ (unint64_t)_getSpanTypeFromProtobufSpan:(id)span
{
  spanCopy = span;
  if (![spanCopy matcherNamesCount])
  {
    v4 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "No matcher names provided - type property will be UPSpanTypeNone", buf, 2u);
    }
  }

  if ([spanCopy matcherNamesCount])
  {
    v5 = 1;
    do
    {
      v6 = [spanCopy matcherNamesAtIndex:v5 - 1];
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

      matcherNamesCount = [spanCopy matcherNamesCount];
      if (!v7)
      {
        break;
      }
    }

    while (matcherNamesCount > v5++);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end