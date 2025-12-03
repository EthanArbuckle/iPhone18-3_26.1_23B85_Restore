@interface PSSGMessageDeRegister
+ (id)messageWithSessionName:(id)name;
- ($995AEC83619B72959345773A9004CE00)serialize;
@end

@implementation PSSGMessageDeRegister

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [(PSSGMessageBase *)[PSSGMessageDeRegister alloc] initWithType:1 string1:nameCopy];

  [(PSSGMessageDeRegister *)v4 setPid:getpid()];

  return v4;
}

- ($995AEC83619B72959345773A9004CE00)serialize
{
  v5.receiver = self;
  v5.super_class = PSSGMessageDeRegister;
  serialize = [(PSSGMessageBase *)&v5 serialize];
  serialize->var1 = [(PSSGMessageDeRegister *)self pid];
  return serialize;
}

@end