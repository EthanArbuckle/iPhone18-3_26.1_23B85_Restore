@interface PSSGMessageRegister
+ (id)messageWithSessionName:(id)a3;
- ($995AEC83619B72959345773A9004CE00)serialize;
@end

@implementation PSSGMessageRegister

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [PSSGMessageRegister messageWithSessionName:v3 pid:getpid()];

  return v4;
}

- ($995AEC83619B72959345773A9004CE00)serialize
{
  v5.receiver = self;
  v5.super_class = PSSGMessageRegister;
  v3 = [(PSSGMessageBase *)&v5 serialize];
  v3->var1 = [(PSSGMessageRegister *)self pid];
  return v3;
}

@end