@interface TSUCustomFormatCondition
- (BOOL)isEqual:(id)equal;
- (TSUCustomFormatCondition)init;
- (TSUCustomFormatCondition)initWithType:(int)type value:(double)value data:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSUCustomFormatCondition

- (TSUCustomFormatCondition)init
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormatCondition init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:556 isFatal:0 description:"Do not call init for TSUCustomFormatCondition"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (TSUCustomFormatCondition)initWithType:(int)type value:(double)value data:(id)data
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = TSUCustomFormatCondition;
  v9 = [(TSUCustomFormatCondition *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_conditionType = type;
    v9->_conditionValue = value;
    if (!dataCopy)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCustomFormatCondition initWithType:value:data:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormat.m"];
      [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:567 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v13 = [dataCopy copy];
    data = v10->_data;
    v10->_data = v13;

    [(TSUCustomFormatData *)v10->_data setIsConditional:1];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSUCustomFormatCondition allocWithZone:zone];
  conditionType = [(TSUCustomFormatCondition *)self conditionType];
  [(TSUCustomFormatCondition *)self conditionValue];
  v7 = v6;
  data = [(TSUCustomFormatCondition *)self data];
  v9 = [(TSUCustomFormatCondition *)v4 initWithType:conditionType value:data data:v7];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);

  if (v6 && (-[TSUCustomFormatCondition conditionValue](self, "conditionValue"), v8 = v7, [v6 conditionValue], v8 == v9) && (v10 = -[TSUCustomFormatCondition conditionType](self, "conditionType"), v10 == objc_msgSend(v6, "conditionType")))
  {
    data = [(TSUCustomFormatCondition *)self data];
    data2 = [v6 data];
    v13 = [data isEqual:data2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end