@interface BADeveloperDebugMessage
- (BADeveloperDebugMessage)init;
- (BADeveloperDebugMessage)initWithCoder:(id)coder;
- (id)archivedRepresentationWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BADeveloperDebugMessage

- (BADeveloperDebugMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = BADeveloperDebugMessage;
  v5 = [(BADeveloperDebugMessage *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BAMessageVersion"];
    v5->_messageVersion = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (BADeveloperDebugMessage)init
{
  v3.receiver = self;
  v3.super_class = BADeveloperDebugMessage;
  result = [(BADeveloperDebugMessage *)&v3 init];
  if (result)
  {
    result->_messageVersion = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedInteger:[(BADeveloperDebugMessage *)self messageVersion]];
  [coderCopy encodeObject:v5 forKey:@"BAMessageVersion"];
}

- (id)archivedRepresentationWithError:(id *)error
{
  v10 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else if (error)
  {
    v8 = v5;
    *error = v6;
  }

  return v4;
}

@end