@interface PPScoredLabeledValue
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScoredLabeledValue:(id)value;
- (PPScoredLabeledValue)initWithCoder:(id)coder;
- (PPScoredLabeledValue)initWithLabeledValue:(id)value score:(double)score flags:(unsigned __int8)flags;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPScoredLabeledValue

- (BOOL)isEqualToScoredLabeledValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_8;
  }

  v5 = self->_labeledValue;
  v6 = v5;
  if (v5 == valueCopy[2])
  {
  }

  else
  {
    v7 = [(PPLabeledValue *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if (self->_score != *(valueCopy + 3))
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = self->_flags == *(valueCopy + 8);
LABEL_9:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPScoredLabeledValue *)self isEqualToScoredLabeledValue:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v6 = [(PPLabeledValue *)self->_labeledValue copyWithZone:zone];
  v7 = [v5 scoredLabeledValueWithLabeledValue:v6 score:self->_flags flags:self->_score];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PPLabeledValue *)self->_labeledValue hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v5 = [v4 hash] - v3 + 32 * v3;

  return self->_flags - v5 + 32 * v5;
}

- (void)encodeWithCoder:(id)coder
{
  labeledValue = self->_labeledValue;
  coderCopy = coder;
  [coderCopy encodeObject:labeledValue forKey:@"lvl"];
  [coderCopy encodeDouble:@"sco" forKey:self->_score];
  [coderCopy encodeInt32:self->_flags forKey:@"fla"];
}

- (PPScoredLabeledValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lvl"];
  [coderCopy decodeDoubleForKey:@"sco"];
  v7 = v6;
  v8 = [coderCopy decodeInt32ForKey:@"fla"];

  v9 = [(PPScoredLabeledValue *)self initWithLabeledValue:v5 score:v8 flags:v7];
  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  score = self->_score;
  [compareCopy score];
  v7 = [PPUtils compareDouble:score withDouble:v6];
  if (!v7)
  {
    label = [(PPLabeledValue *)self->_labeledValue label];
    labeledValue = [compareCopy labeledValue];
    label2 = [labeledValue label];
    v7 = [label compare:label2];
  }

  return v7;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPScoredLabeledValue lv:%@ s:%f f:%u>", self->_labeledValue, *&self->_score, self->_flags];

  return v2;
}

- (PPScoredLabeledValue)initWithLabeledValue:(id)value score:(double)score flags:(unsigned __int8)flags
{
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPScoredLabeledValue.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"labeledValue"}];
  }

  v15.receiver = self;
  v15.super_class = PPScoredLabeledValue;
  v11 = [(PPScoredLabeledValue *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_labeledValue, value);
    v12->_score = score;
    v12->_flags = flags;
  }

  return v12;
}

@end