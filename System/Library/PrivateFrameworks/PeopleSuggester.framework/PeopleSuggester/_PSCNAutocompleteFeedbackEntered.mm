@interface _PSCNAutocompleteFeedbackEntered
- (_PSCNAutocompleteFeedbackEntered)initWithCoder:(id)a3;
- (_PSCNAutocompleteFeedbackEntered)initWithEnterStatus:(int64_t)a3;
@end

@implementation _PSCNAutocompleteFeedbackEntered

- (_PSCNAutocompleteFeedbackEntered)initWithEnterStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _PSCNAutocompleteFeedbackEntered;
  result = [(_PSCNAutocompleteFeedbackEntered *)&v5 init];
  if (result)
  {
    result->_enterStatus = a3;
  }

  return result;
}

- (_PSCNAutocompleteFeedbackEntered)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _PSCNAutocompleteFeedbackEntered;
  v5 = [(_PSCNAutocompleteFeedbackEntered *)&v8 init];
  if (v5)
  {
    v5->_enterStatus = [v4 decodeIntegerForKey:@"enterStatus"];
    v6 = v5;
  }

  return v5;
}

@end