@interface WFActionDidRunTestingEvent
- (WFActionDidRunTestingEvent)initWithAction:(id)action output:(id)output error:(id)error;
- (id)description;
@end

@implementation WFActionDidRunTestingEvent

- (id)description
{
  v3 = [(WFContentCollection *)self->_output description];
  if ([v3 length] >= 0x33)
  {
    v4 = [v3 substringToIndex:50];
    v5 = [v4 stringByAppendingString:@"…"];

    v3 = v5;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@: %p, output: %@, error: %@>", v8, self, v3, self->_error];

  return v9;
}

- (WFActionDidRunTestingEvent)initWithAction:(id)action output:(id)output error:(id)error
{
  outputCopy = output;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = WFActionDidRunTestingEvent;
  v11 = [(WFActionTestingEvent *)&v15 initWithAction:action];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_output, output);
    objc_storeStrong(&v12->_error, error);
    v13 = v12;
  }

  return v12;
}

@end