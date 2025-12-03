@interface _PSCNAutocompleteFeedbackExited
- (_PSCNAutocompleteFeedbackExited)initWithCoder:(id)coder;
- (_PSCNAutocompleteFeedbackExited)initWithExitStatus:(int64_t)status;
@end

@implementation _PSCNAutocompleteFeedbackExited

- (_PSCNAutocompleteFeedbackExited)initWithExitStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = _PSCNAutocompleteFeedbackExited;
  result = [(_PSCNAutocompleteFeedbackExited *)&v5 init];
  if (result)
  {
    result->_exitStatus = status;
  }

  return result;
}

- (_PSCNAutocompleteFeedbackExited)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _PSCNAutocompleteFeedbackExited;
  v5 = [(_PSCNAutocompleteFeedbackExited *)&v8 init];
  if (v5)
  {
    v5->_exitStatus = [coderCopy decodeIntegerForKey:@"exitStatus"];
    v6 = v5;
  }

  return v5;
}

@end