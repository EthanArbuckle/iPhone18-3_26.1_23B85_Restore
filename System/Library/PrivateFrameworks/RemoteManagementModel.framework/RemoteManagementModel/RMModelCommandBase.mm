@interface RMModelCommandBase
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RMModelCommandBase

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelCommandBase;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_commandType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_commandIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelAnyPayload *)self->_commandPayload copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end