@interface RSNodeConnection
+ (id)new;
- (RSNodeConnection)init;
- (RSNodeConnection)initWithOutput:(id)output input:(id)input;
- (RSNodeInput)input;
- (RSNodeOutput)output;
@end

@implementation RSNodeConnection

- (RSNodeInput)input
{
  WeakRetained = objc_loadWeakRetained(&self->_input);

  return WeakRetained;
}

- (RSNodeOutput)output
{
  WeakRetained = objc_loadWeakRetained(&self->_output);

  return WeakRetained;
}

- (RSNodeConnection)initWithOutput:(id)output input:(id)input
{
  outputCopy = output;
  inputCopy = input;
  v11.receiver = self;
  v11.super_class = RSNodeConnection;
  v8 = [(RSNodeConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_output, outputCopy);
    objc_storeWeak(&v9->_input, inputCopy);
  }

  return v9;
}

- (RSNodeConnection)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

@end