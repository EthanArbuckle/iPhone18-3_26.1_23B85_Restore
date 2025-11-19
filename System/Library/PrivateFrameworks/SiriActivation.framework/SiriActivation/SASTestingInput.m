@interface SASTestingInput
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SASTestingInput)initWithBuilder:(id)a3;
- (SASTestingInput)initWithCoder:(id)a3;
- (SASTestingInput)initWithType:(int64_t)a3 text:(id)a4 recordedSpeechURL:(id)a5;
- (id)description;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASTestingInput

- (SASTestingInput)initWithBuilder:(id)a3
{
  v4 = [SASTestingInput newWithBuilder:a3];

  return v4;
}

- (SASTestingInput)initWithType:(int64_t)a3 text:(id)a4 recordedSpeechURL:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = SASTestingInput;
  v10 = [(SASTestingInput *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    text = v11->_text;
    v11->_text = v12;

    v14 = [v9 copy];
    recordedSpeechURL = v11->_recordedSpeechURL;
    v11->_recordedSpeechURL = v14;
  }

  return v11;
}

- (id)description
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20.receiver = self;
  v20.super_class = SASTestingInput;
  v4 = [(SASTestingInput *)&v20 description];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  type = self->_type;
  v7 = SASTestingInputTypeGetName(type);
  v8 = [v5 initWithFormat:@"type = %ld (%@)", type, v7];
  v21[0] = v8;
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(NSString *)self->_text description];
  v11 = [v9 initWithFormat:@"text = %@", v10];
  v21[1] = v11;
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [(NSURL *)self->_recordedSpeechURL description];
  v14 = [v12 initWithFormat:@"recordedSpeechURL = %@", v13];
  v21[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v16 = [v15 componentsJoinedByString:{@", "}];
  v17 = [v3 initWithFormat:@"%@ {%@}", v4, v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_text hash];
  v6 = v5 ^ [(NSURL *)self->_recordedSpeechURL hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      type = self->_type;
      if (type == [(SASTestingInput *)v5 type])
      {
        v7 = [(SASTestingInput *)v5 text];
        text = self->_text;
        if (text == v7 || [(NSString *)text isEqual:v7])
        {
          v9 = [(SASTestingInput *)v5 recordedSpeechURL];
          recordedSpeechURL = self->_recordedSpeechURL;
          v11 = recordedSpeechURL == v9 || [(NSURL *)recordedSpeechURL isEqual:v9];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (SASTestingInput)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASTestingInput::type"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASTestingInput::text"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASTestingInput::recordedSpeechURL"];

  v9 = [(SASTestingInput *)self initWithType:v6 text:v7 recordedSpeechURL:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v7 = a3;
  v6 = [v4 numberWithInteger:type];
  [v7 encodeObject:v6 forKey:@"SASTestingInput::type"];

  [v7 encodeObject:self->_text forKey:@"SASTestingInput::text"];
  [v7 encodeObject:self->_recordedSpeechURL forKey:@"SASTestingInput::recordedSpeechURL"];
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SASTestingInputMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SASTestingInputMutation *)v4 generate];

  return v5;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SASTestingInputMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SASTestingInputMutation *)v5 generate];
  }

  else
  {
    v6 = [(SASTestingInput *)self copy];
  }

  return v6;
}

@end