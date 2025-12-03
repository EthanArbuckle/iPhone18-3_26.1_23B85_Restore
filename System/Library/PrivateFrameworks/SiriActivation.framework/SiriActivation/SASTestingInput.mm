@interface SASTestingInput
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SASTestingInput)initWithBuilder:(id)builder;
- (SASTestingInput)initWithCoder:(id)coder;
- (SASTestingInput)initWithType:(int64_t)type text:(id)text recordedSpeechURL:(id)l;
- (id)description;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SASTestingInput

- (SASTestingInput)initWithBuilder:(id)builder
{
  v4 = [SASTestingInput newWithBuilder:builder];

  return v4;
}

- (SASTestingInput)initWithType:(int64_t)type text:(id)text recordedSpeechURL:(id)l
{
  textCopy = text;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = SASTestingInput;
  v10 = [(SASTestingInput *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [textCopy copy];
    text = v11->_text;
    v11->_text = v12;

    v14 = [lCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(SASTestingInput *)v5 type])
      {
        text = [(SASTestingInput *)v5 text];
        text = self->_text;
        if (text == text || [(NSString *)text isEqual:text])
        {
          recordedSpeechURL = [(SASTestingInput *)v5 recordedSpeechURL];
          recordedSpeechURL = self->_recordedSpeechURL;
          v11 = recordedSpeechURL == recordedSpeechURL || [(NSURL *)recordedSpeechURL isEqual:recordedSpeechURL];
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

- (SASTestingInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASTestingInput::type"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASTestingInput::text"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASTestingInput::recordedSpeechURL"];

  v9 = [(SASTestingInput *)self initWithType:integerValue text:v7 recordedSpeechURL:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:type];
  [coderCopy encodeObject:v6 forKey:@"SASTestingInput::type"];

  [coderCopy encodeObject:self->_text forKey:@"SASTestingInput::text"];
  [coderCopy encodeObject:self->_recordedSpeechURL forKey:@"SASTestingInput::recordedSpeechURL"];
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SASTestingInputMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SASTestingInputMutation *)v4 generate];

  return generate;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SASTestingInputMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SASTestingInputMutation *)v5 generate];
  }

  else
  {
    generate = [(SASTestingInput *)self copy];
  }

  return generate;
}

@end