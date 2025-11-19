@interface USOSerializedUtteranceAlignment
- (USOSerializedUtteranceAlignment)initWithCoder:(id)a3;
- (USOSerializedUtteranceAlignment)initWithNodeIndex:(unint64_t)a3 asrHypothesisIndex:(unsigned int)a4 spans:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOSerializedUtteranceAlignment

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedLongLong:{-[USOSerializedUtteranceAlignment nodeIndex](self, "nodeIndex")}];
  [v5 encodeObject:v6 forKey:@"nodeIndex"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedUtteranceAlignment asrHypothesisIndex](self, "asrHypothesisIndex")}];
  [v5 encodeObject:v7 forKey:@"asrHypothesisIndex"];

  v8 = [(USOSerializedUtteranceAlignment *)self spans];
  [v5 encodeObject:v8 forKey:@"spans"];
}

- (USOSerializedUtteranceAlignment)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = USOSerializedUtteranceAlignment;
  v5 = [(USOSerializedUtteranceAlignment *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nodeIndex"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asrHypothesisIndex"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"spans"];
    spans = v5->_spans;
    v5->_spans = v11;

    v5->_nodeIndex = [v6 unsignedLongLongValue];
    v5->_asrHypothesisIndex = [v7 unsignedIntValue];
  }

  return v5;
}

- (USOSerializedUtteranceAlignment)initWithNodeIndex:(unint64_t)a3 asrHypothesisIndex:(unsigned int)a4 spans:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = USOSerializedUtteranceAlignment;
  v10 = [(USOSerializedUtteranceAlignment *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_nodeIndex = a3;
    v10->_asrHypothesisIndex = a4;
    objc_storeStrong(&v10->_spans, a5);
  }

  return v11;
}

@end