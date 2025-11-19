@interface _PSCNAutocompleteFeedbackExited
- (_PSCNAutocompleteFeedbackExited)initWithCoder:(id)a3;
- (_PSCNAutocompleteFeedbackExited)initWithExitStatus:(int64_t)a3;
@end

@implementation _PSCNAutocompleteFeedbackExited

- (_PSCNAutocompleteFeedbackExited)initWithExitStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _PSCNAutocompleteFeedbackExited;
  result = [(_PSCNAutocompleteFeedbackExited *)&v5 init];
  if (result)
  {
    result->_exitStatus = a3;
  }

  return result;
}

- (_PSCNAutocompleteFeedbackExited)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _PSCNAutocompleteFeedbackExited;
  v5 = [(_PSCNAutocompleteFeedbackExited *)&v8 init];
  if (v5)
  {
    v5->_exitStatus = [v4 decodeIntegerForKey:@"exitStatus"];
    v6 = v5;
  }

  return v5;
}

@end