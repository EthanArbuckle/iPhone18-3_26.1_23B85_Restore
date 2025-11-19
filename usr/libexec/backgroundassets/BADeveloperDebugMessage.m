@interface BADeveloperDebugMessage
- (BADeveloperDebugMessage)init;
- (BADeveloperDebugMessage)initWithCoder:(id)a3;
- (id)archivedRepresentationWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BADeveloperDebugMessage

- (BADeveloperDebugMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BADeveloperDebugMessage;
  v5 = [(BADeveloperDebugMessage *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BAMessageVersion"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(BADeveloperDebugMessage *)self messageVersion]];
  [v4 encodeObject:v5 forKey:@"BAMessageVersion"];
}

- (id)archivedRepresentationWithError:(id *)a3
{
  v10 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else if (a3)
  {
    v8 = v5;
    *a3 = v6;
  }

  return v4;
}

@end