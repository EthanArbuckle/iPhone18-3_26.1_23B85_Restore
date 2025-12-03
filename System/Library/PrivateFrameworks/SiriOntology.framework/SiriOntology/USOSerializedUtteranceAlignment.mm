@interface USOSerializedUtteranceAlignment
- (USOSerializedUtteranceAlignment)initWithCoder:(id)coder;
- (USOSerializedUtteranceAlignment)initWithNodeIndex:(unint64_t)index asrHypothesisIndex:(unsigned int)hypothesisIndex spans:(id)spans;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOSerializedUtteranceAlignment

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:{-[USOSerializedUtteranceAlignment nodeIndex](self, "nodeIndex")}];
  [coderCopy encodeObject:v6 forKey:@"nodeIndex"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedUtteranceAlignment asrHypothesisIndex](self, "asrHypothesisIndex")}];
  [coderCopy encodeObject:v7 forKey:@"asrHypothesisIndex"];

  spans = [(USOSerializedUtteranceAlignment *)self spans];
  [coderCopy encodeObject:spans forKey:@"spans"];
}

- (USOSerializedUtteranceAlignment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = USOSerializedUtteranceAlignment;
  v5 = [(USOSerializedUtteranceAlignment *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nodeIndex"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asrHypothesisIndex"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"spans"];
    spans = v5->_spans;
    v5->_spans = v11;

    v5->_nodeIndex = [v6 unsignedLongLongValue];
    v5->_asrHypothesisIndex = [v7 unsignedIntValue];
  }

  return v5;
}

- (USOSerializedUtteranceAlignment)initWithNodeIndex:(unint64_t)index asrHypothesisIndex:(unsigned int)hypothesisIndex spans:(id)spans
{
  spansCopy = spans;
  v13.receiver = self;
  v13.super_class = USOSerializedUtteranceAlignment;
  v10 = [(USOSerializedUtteranceAlignment *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_nodeIndex = index;
    v10->_asrHypothesisIndex = hypothesisIndex;
    objc_storeStrong(&v10->_spans, spans);
  }

  return v11;
}

@end