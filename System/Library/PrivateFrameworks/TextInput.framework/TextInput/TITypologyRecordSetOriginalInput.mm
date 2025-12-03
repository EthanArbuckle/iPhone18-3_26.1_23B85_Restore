@interface TITypologyRecordSetOriginalInput
- (TITypologyRecordSetOriginalInput)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TITypologyRecordSetOriginalInput

- (id)shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  originalInput = [(TITypologyRecordSetOriginalInput *)self originalInput];
  v4 = [v2 stringWithFormat:@"SET ORIGINAL INPUT: %@", originalInput];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordSetOriginalInput;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_originalInput forKey:{@"originalInput", v5.receiver, v5.super_class}];
}

- (TITypologyRecordSetOriginalInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TITypologyRecordSetOriginalInput;
  v5 = [(TITypologyRecord *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalInput"];
    v7 = [v6 copy];
    originalInput = v5->_originalInput;
    v5->_originalInput = v7;
  }

  return v5;
}

@end