@interface PLSearchOCRTextLineCandidate
- (PLSearchOCRTextLineCandidate)initWithLine:(id)line words:(id)words confidence:(double)confidence;
- (id)description;
@end

@implementation PLSearchOCRTextLineCandidate

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@:%p> ", v5, self];

  [string appendFormat:@"confidence: %f, ", *&self->_confidence];
  [string appendFormat:@"line: '%@', ", self->_line];
  [string appendFormat:@"words: %@, ", self->_words];

  return string;
}

- (PLSearchOCRTextLineCandidate)initWithLine:(id)line words:(id)words confidence:(double)confidence
{
  lineCopy = line;
  wordsCopy = words;
  v16.receiver = self;
  v16.super_class = PLSearchOCRTextLineCandidate;
  v10 = [(PLSearchOCRTextLineCandidate *)&v16 init];
  if (v10)
  {
    v11 = [lineCopy copy];
    line = v10->_line;
    v10->_line = v11;

    v10->_confidence = confidence;
    v13 = [wordsCopy copy];
    words = v10->_words;
    v10->_words = v13;
  }

  return v10;
}

@end