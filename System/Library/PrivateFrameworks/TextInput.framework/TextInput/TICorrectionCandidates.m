@interface TICorrectionCandidates
- (TICorrectionCandidates)initWithAutocorrection:(id)a3 alternateCorrections:(id)a4 autocorrectionBlocked:(BOOL)a5;
- (TICorrectionCandidates)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TICorrectionCandidates

- (id)description
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p autocorrection=%@ alternate=%@", objc_opt_class(), self, self->_autocorrection, self->_alternateCorrections];
  [v2 appendFormat:@">"];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  autocorrection = self->_autocorrection;
  v7 = v4;
  if (autocorrection)
  {
    [v4 encodeObject:autocorrection forKey:@"autocorrection"];
    v4 = v7;
  }

  alternateCorrections = self->_alternateCorrections;
  if (alternateCorrections)
  {
    [v7 encodeObject:alternateCorrections forKey:@"alternateCorrections"];
    v4 = v7;
  }
}

- (TICorrectionCandidates)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TICorrectionCandidates;
  v5 = [(TICorrectionCandidates *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autocorrection"];
    autocorrection = v5->_autocorrection;
    v5->_autocorrection = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"alternateCorrections"];
    alternateCorrections = v5->_alternateCorrections;
    v5->_alternateCorrections = v11;
  }

  return v5;
}

- (TICorrectionCandidates)initWithAutocorrection:(id)a3 alternateCorrections:(id)a4 autocorrectionBlocked:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = TICorrectionCandidates;
  v11 = [(TICorrectionCandidates *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_autocorrection, a3);
    v13 = [v10 copy];
    alternateCorrections = v12->_alternateCorrections;
    v12->_alternateCorrections = v13;

    v12->_autocorrectionBlocked = a5;
  }

  return v12;
}

@end