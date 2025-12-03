@interface _PSCNAutocompleteFeedbackEntered
- (_PSCNAutocompleteFeedbackEntered)initWithCoder:(id)coder;
- (_PSCNAutocompleteFeedbackEntered)initWithEnterStatus:(int64_t)status;
@end

@implementation _PSCNAutocompleteFeedbackEntered

- (_PSCNAutocompleteFeedbackEntered)initWithEnterStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = _PSCNAutocompleteFeedbackEntered;
  result = [(_PSCNAutocompleteFeedbackEntered *)&v5 init];
  if (result)
  {
    result->_enterStatus = status;
  }

  return result;
}

- (_PSCNAutocompleteFeedbackEntered)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _PSCNAutocompleteFeedbackEntered;
  v5 = [(_PSCNAutocompleteFeedbackEntered *)&v8 init];
  if (v5)
  {
    v5->_enterStatus = [coderCopy decodeIntegerForKey:@"enterStatus"];
    v6 = v5;
  }

  return v5;
}

@end