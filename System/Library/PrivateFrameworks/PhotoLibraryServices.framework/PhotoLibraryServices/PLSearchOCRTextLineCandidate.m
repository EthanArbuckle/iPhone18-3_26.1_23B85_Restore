@interface PLSearchOCRTextLineCandidate
- (PLSearchOCRTextLineCandidate)initWithLine:(id)a3 words:(id)a4 confidence:(double)a5;
- (id)description;
@end

@implementation PLSearchOCRTextLineCandidate

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@:%p> ", v5, self];

  [v3 appendFormat:@"confidence: %f, ", *&self->_confidence];
  [v3 appendFormat:@"line: '%@', ", self->_line];
  [v3 appendFormat:@"words: %@, ", self->_words];

  return v3;
}

- (PLSearchOCRTextLineCandidate)initWithLine:(id)a3 words:(id)a4 confidence:(double)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PLSearchOCRTextLineCandidate;
  v10 = [(PLSearchOCRTextLineCandidate *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    line = v10->_line;
    v10->_line = v11;

    v10->_confidence = a5;
    v13 = [v9 copy];
    words = v10->_words;
    v10->_words = v13;
  }

  return v10;
}

@end