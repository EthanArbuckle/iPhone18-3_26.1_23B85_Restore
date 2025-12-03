@interface PSSGMessageRegister
+ (id)messageWithSessionName:(id)name;
- ($995AEC83619B72959345773A9004CE00)serialize;
@end

@implementation PSSGMessageRegister

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [PSSGMessageRegister messageWithSessionName:nameCopy pid:getpid()];

  return v4;
}

- ($995AEC83619B72959345773A9004CE00)serialize
{
  v5.receiver = self;
  v5.super_class = PSSGMessageRegister;
  serialize = [(PSSGMessageBase *)&v5 serialize];
  serialize->var1 = [(PSSGMessageRegister *)self pid];
  return serialize;
}

@end