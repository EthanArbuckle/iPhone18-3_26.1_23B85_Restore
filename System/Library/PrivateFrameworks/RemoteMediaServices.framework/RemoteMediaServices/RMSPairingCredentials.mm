@interface RMSPairingCredentials
- (RMSPairingCredentials)initWithProtobuf:(id)protobuf;
- (id)protobuf;
@end

@implementation RMSPairingCredentials

- (RMSPairingCredentials)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v7.receiver = self;
  v7.super_class = RMSPairingCredentials;
  v5 = [(RMSPairingCredentials *)&v7 init];
  if (v5)
  {
    v5->_requirementType = [protobufCopy requirementType];
    v5->_characterCount = [protobufCopy characterCount];
  }

  return v5;
}

- (id)protobuf
{
  v3 = objc_opt_new();
  [v3 setRequirementType:LODWORD(self->_requirementType)];
  [v3 setCharacterCount:LODWORD(self->_characterCount)];

  return v3;
}

@end