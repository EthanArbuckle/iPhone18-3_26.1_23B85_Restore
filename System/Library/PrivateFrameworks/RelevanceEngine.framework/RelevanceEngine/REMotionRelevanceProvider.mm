@interface REMotionRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REMotionRelevanceProvider)initWithDictionary:(id)dictionary;
- (REMotionRelevanceProvider)initWithMotionTypes:(unint64_t)types;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REMotionRelevanceProvider

- (REMotionRelevanceProvider)initWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"motion_type"];
  v5 = -[REMotionRelevanceProvider initWithMotionTypes:](self, "initWithMotionTypes:", [v4 unsignedIntegerValue]);

  return v5;
}

- (id)dictionaryEncoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_motionTypes];
  [dictionary setObject:v4 forKeyedSubscript:@"motion_type"];

  v5 = [dictionary copy];

  return v5;
}

- (REMotionRelevanceProvider)initWithMotionTypes:(unint64_t)types
{
  v5.receiver = self;
  v5.super_class = REMotionRelevanceProvider;
  result = [(RERelevanceProvider *)&v5 init];
  if (result)
  {
    result->_motionTypes = types;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  motionTypes = self->_motionTypes;

  return [v4 initWithMotionTypes:motionTypes];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = REMotionRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_motionTypes == equalCopy->_motionTypes;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = REMotionRelevanceProvider;
  v3 = [(REMotionRelevanceProvider *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" motionTypes=%lu", self->_motionTypes];

  return v4;
}

@end