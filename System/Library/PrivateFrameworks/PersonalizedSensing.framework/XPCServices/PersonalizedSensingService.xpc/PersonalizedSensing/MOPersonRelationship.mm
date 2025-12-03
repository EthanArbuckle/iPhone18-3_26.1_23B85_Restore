@interface MOPersonRelationship
- (MOPersonRelationship)initWithCoder:(id)coder;
- (MOPersonRelationship)initWithRelationship:(unint64_t)relationship score:(double)score source:(id)source;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOPersonRelationship

- (MOPersonRelationship)initWithRelationship:(unint64_t)relationship score:(double)score source:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = MOPersonRelationship;
  v9 = [(MOPersonRelationship *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_relationship = relationship;
    v9->_score = score;
    v11 = [sourceCopy copy];
    source = v10->_source;
    v10->_source = v11;
  }

  return v10;
}

- (id)description
{
  relationship = [(MOPersonRelationship *)self relationship];
  [(MOPersonRelationship *)self score];
  v5 = v4;
  source = [(MOPersonRelationship *)self source];
  v7 = [NSString stringWithFormat:@"<MOPersonRelationship relationship, %lu, score, %.1f, source, %@>", relationship, v5, source];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  relationship = self->_relationship;
  coderCopy = coder;
  [coderCopy encodeInt64:relationship forKey:@"relationship"];
  [coderCopy encodeDouble:@"score" forKey:self->_score];
  [coderCopy encodeObject:self->_source forKey:@"source"];
}

- (MOPersonRelationship)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"relationship"];
  [coderCopy decodeDoubleForKey:@"score"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];

  v9 = [(MOPersonRelationship *)self initWithRelationship:v5 score:v8 source:v7];
  return v9;
}

@end