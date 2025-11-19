@interface TITypologyRecordSetOriginalInput
- (TITypologyRecordSetOriginalInput)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TITypologyRecordSetOriginalInput

- (id)shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(TITypologyRecordSetOriginalInput *)self originalInput];
  v4 = [v2 stringWithFormat:@"SET ORIGINAL INPUT: %@", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordSetOriginalInput;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_originalInput forKey:{@"originalInput", v5.receiver, v5.super_class}];
}

- (TITypologyRecordSetOriginalInput)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TITypologyRecordSetOriginalInput;
  v5 = [(TITypologyRecord *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalInput"];
    v7 = [v6 copy];
    originalInput = v5->_originalInput;
    v5->_originalInput = v7;
  }

  return v5;
}

@end