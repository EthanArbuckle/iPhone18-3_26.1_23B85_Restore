@interface TITypologyRecordKeyboardInput
- (TITypologyRecordKeyboardInput)initWithCoder:(id)coder;
- (id)changedText;
- (id)shortDescription;
- (id)textSummary;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordKeyboardInput

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordKeyboardInput *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)changedText
{
  output = [(TITypologyRecordKeyboardInput *)self output];
  deletionCount = [output deletionCount];

  if (deletionCount)
  {
    v5 = MEMORY[0x1E696AEC0];
    output2 = [(TITypologyRecordKeyboardInput *)self output];
    candidate = [v5 stringWithFormat:@"-%li", objc_msgSend(output2, "deletionCount")];
    goto LABEL_19;
  }

  input = [(TITypologyRecordKeyboardInput *)self input];
  string = [input string];

  input2 = [(TITypologyRecordKeyboardInput *)self input];
  acceptedCandidate = [input2 acceptedCandidate];
  candidate = [acceptedCandidate candidate];

  if (!string)
  {
    if (!candidate)
    {
      goto LABEL_20;
    }

    input3 = [(TITypologyRecordKeyboardInput *)self input];
    acceptedCandidate2 = [input3 acceptedCandidate];
    input4 = [acceptedCandidate2 input];
    input5 = [(TITypologyRecordKeyboardInput *)self input];
    acceptedCandidate3 = [input5 acceptedCandidate];
    candidate2 = [acceptedCandidate3 candidate];
    v32 = [input4 isEqualToString:candidate2];

    if (v32)
    {
      output2 = [(TITypologyRecordKeyboardInput *)self input];
      acceptedCandidate4 = [output2 acceptedCandidate];
      candidate = [acceptedCandidate4 candidate];

      goto LABEL_19;
    }

    v46 = MEMORY[0x1E696AEC0];
    output2 = [(TITypologyRecordKeyboardInput *)self input];
    acceptedCandidate5 = [output2 acceptedCandidate];
    input6 = [acceptedCandidate5 input];
    input7 = [(TITypologyRecordKeyboardInput *)self input];
    acceptedCandidate6 = [input7 acceptedCandidate];
    candidate3 = [acceptedCandidate6 candidate];
    candidate = [v46 stringWithFormat:@"%@->%@", input6, candidate3];

LABEL_18:
    goto LABEL_19;
  }

  input8 = [(TITypologyRecordKeyboardInput *)self input];
  v13 = input8;
  if (candidate)
  {
    acceptedCandidate7 = [input8 acceptedCandidate];
    input9 = [acceptedCandidate7 input];
    input10 = [(TITypologyRecordKeyboardInput *)self input];
    acceptedCandidate8 = [input10 acceptedCandidate];
    candidate4 = [acceptedCandidate8 candidate];
    v19 = [input9 isEqualToString:candidate4];

    v20 = MEMORY[0x1E696AEC0];
    input11 = [(TITypologyRecordKeyboardInput *)self input];
    v13 = input11;
    if (v19)
    {
      string2 = [input11 string];
      input12 = [(TITypologyRecordKeyboardInput *)self input];
      acceptedCandidate9 = [input12 acceptedCandidate];
      candidate5 = [acceptedCandidate9 candidate];
      candidate = [v20 stringWithFormat:@"|%@->%@", string2, candidate5];
    }

    else
    {
      string2 = [input11 acceptedCandidate];
      input12 = [string2 input];
      acceptedCandidate9 = [(TITypologyRecordKeyboardInput *)self input];
      candidate5 = [acceptedCandidate9 acceptedCandidate];
      v25Candidate = [candidate5 candidate];
      input13 = [(TITypologyRecordKeyboardInput *)self input];
      string3 = [input13 string];
      candidate = [v20 stringWithFormat:@"%@->%@|%@", input12, v25Candidate, string3];
    }
  }

  else
  {
    candidate = [input8 string];
  }

  output2 = [(TITypologyRecordKeyboardInput *)self input];
  acceptedCandidate5 = [output2 string];
  input6 = [(TITypologyRecordKeyboardInput *)self output];
  insertionText = [input6 insertionText];
  if ([acceptedCandidate5 isEqualToString:insertionText])
  {

    goto LABEL_18;
  }

  output3 = [(TITypologyRecordKeyboardInput *)self output];
  insertionText2 = [output3 insertionText];
  v42 = [insertionText2 length];

  if (!v42)
  {
    goto LABEL_20;
  }

  v43 = MEMORY[0x1E696AEC0];
  output2 = [(TITypologyRecordKeyboardInput *)self output];
  insertionText3 = [output2 insertionText];
  v45 = [v43 stringWithFormat:@"%@->%@|", candidate, insertionText3];

  candidate = v45;
LABEL_19:

LABEL_20:

  return candidate;
}

- (id)shortDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"INPUT "];
  input = [(TITypologyRecordKeyboardInput *)self input];
  string = [input string];

  input2 = [(TITypologyRecordKeyboardInput *)self input];
  input4 = input2;
  if (string)
  {
    string2 = [input2 string];
    [v3 appendFormat:@"%@", string2];
LABEL_3:

    goto LABEL_10;
  }

  isBackspace = [input2 isBackspace];

  if (isBackspace)
  {
    v10 = @"delete";
  }

  else
  {
    input3 = [(TITypologyRecordKeyboardInput *)self input];
    object = [input3 object];

    if (object)
    {
      input4 = [(TITypologyRecordKeyboardInput *)self input];
      string2 = [input4 object];
      v13 = [string2 description];
      [v3 appendString:v13];

      goto LABEL_3;
    }

    v10 = @"none";
  }

  [v3 appendString:v10];
LABEL_10:
  output = [(TITypologyRecordKeyboardInput *)self output];
  [v3 appendFormat:@" -> OUTPUT %@", output];

  input5 = [(TITypologyRecordKeyboardInput *)self input];
  acceptedCandidate = [input5 acceptedCandidate];

  if (acceptedCandidate)
  {
    input6 = [(TITypologyRecordKeyboardInput *)self input];
    acceptedCandidate2 = [input6 acceptedCandidate];
    candidate = [acceptedCandidate2 candidate];
    [v3 appendFormat:@"; accepted %@", candidate];
  }

  input7 = [(TITypologyRecordKeyboardInput *)self input];
  isSynthesizedByAcceptingCandidate = [input7 isSynthesizedByAcceptingCandidate];

  if (isSynthesizedByAcceptingCandidate)
  {
    [v3 appendFormat:@"; synth"];
  }

  input8 = [(TITypologyRecordKeyboardInput *)self input];
  touchEvent = [input8 touchEvent];

  if (touchEvent)
  {
    input9 = [(TITypologyRecordKeyboardInput *)self input];
    touchEvent2 = [input9 touchEvent];
    shortDescription = [touchEvent2 shortDescription];
    [v3 appendFormat:@"; touch %@", shortDescription];
  }

  keyboardConfig = [(TITypologyRecordKeyboardInput *)self keyboardConfig];
  intermediateText = [keyboardConfig intermediateText];

  if (intermediateText)
  {
    keyboardConfig2 = [(TITypologyRecordKeyboardInput *)self keyboardConfig];
    intermediateText2 = [keyboardConfig2 intermediateText];
    [v3 appendFormat:@"; %@", intermediateText2];
  }

  keyboardState = [(TITypologyRecordKeyboardInput *)self keyboardState];
  documentState = [keyboardState documentState];
  [v3 appendFormat:@" (doc=%@)", documentState];

  return v3;
}

- (id)textSummary
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  input = [(TITypologyRecordKeyboardInput *)self input];
  acceptedCandidate = [input acceptedCandidate];
  isAutocorrection = [acceptedCandidate isAutocorrection];

  if (isAutocorrection)
  {
    input2 = [(TITypologyRecordKeyboardInput *)self input];
    acceptedCandidate2 = [input2 acceptedCandidate];
    v9 = [(TITypologyRecord *)self textSummaryForAutocorrection:acceptedCandidate2];
    [v3 appendString:v9];
  }

  output = [(TITypologyRecordKeyboardInput *)self output];
  deletionCount = [output deletionCount];

  if (deletionCount)
  {
    v12 = 0;
    do
    {
      [v3 appendString:@"\\b"];
      ++v12;
      output2 = [(TITypologyRecordKeyboardInput *)self output];
      deletionCount2 = [output2 deletionCount];
    }

    while (v12 < deletionCount2);
  }

  output3 = [(TITypologyRecordKeyboardInput *)self output];
  insertionText = [output3 insertionText];

  if (insertionText)
  {
    output4 = [(TITypologyRecordKeyboardInput *)self output];
    insertionText2 = [output4 insertionText];

    v19 = [insertionText2 stringByReplacingOccurrencesOfString:@"\ withString:@"\\\];

    v20 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

    [v3 appendString:v20];
  }

  return v3;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordKeyboardInput *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordKeyboardInput *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordKeyboardInput;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_input forKey:{@"input", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [coderCopy encodeObject:self->_output forKey:@"output"];
  [coderCopy encodeObject:self->_keyboardConfig forKey:@"keyboardConfig"];
}

- (TITypologyRecordKeyboardInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TITypologyRecordKeyboardInput;
  v5 = [(TITypologyRecord *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    input = v5->_input;
    v5->_input = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"output"];
    output = v5->_output;
    v5->_output = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardConfig"];
    keyboardConfig = v5->_keyboardConfig;
    v5->_keyboardConfig = v12;
  }

  return v5;
}

@end