@interface TICorrectionCandidates
- (TICorrectionCandidates)initWithAutocorrection:(id)autocorrection alternateCorrections:(id)corrections autocorrectionBlocked:(BOOL)blocked;
- (TICorrectionCandidates)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TICorrectionCandidates

- (id)description
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p autocorrection=%@ alternate=%@", objc_opt_class(), self, self->_autocorrection, self->_alternateCorrections];
  [v2 appendFormat:@">"];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  autocorrection = self->_autocorrection;
  v7 = coderCopy;
  if (autocorrection)
  {
    [coderCopy encodeObject:autocorrection forKey:@"autocorrection"];
    coderCopy = v7;
  }

  alternateCorrections = self->_alternateCorrections;
  if (alternateCorrections)
  {
    [v7 encodeObject:alternateCorrections forKey:@"alternateCorrections"];
    coderCopy = v7;
  }
}

- (TICorrectionCandidates)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = TICorrectionCandidates;
  v5 = [(TICorrectionCandidates *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autocorrection"];
    autocorrection = v5->_autocorrection;
    v5->_autocorrection = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"alternateCorrections"];
    alternateCorrections = v5->_alternateCorrections;
    v5->_alternateCorrections = v11;
  }

  return v5;
}

- (TICorrectionCandidates)initWithAutocorrection:(id)autocorrection alternateCorrections:(id)corrections autocorrectionBlocked:(BOOL)blocked
{
  autocorrectionCopy = autocorrection;
  correctionsCopy = corrections;
  v16.receiver = self;
  v16.super_class = TICorrectionCandidates;
  v11 = [(TICorrectionCandidates *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_autocorrection, autocorrection);
    v13 = [correctionsCopy copy];
    alternateCorrections = v12->_alternateCorrections;
    v12->_alternateCorrections = v13;

    v12->_autocorrectionBlocked = blocked;
  }

  return v12;
}

@end