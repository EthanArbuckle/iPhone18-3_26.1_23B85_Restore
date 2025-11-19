@interface PSSGMessageDeRegister
+ (id)messageWithSessionName:(id)a3;
- ($995AEC83619B72959345773A9004CE00)serialize;
@end

@implementation PSSGMessageDeRegister

+ (id)messageWithSessionName:(id)a3
{
  v3 = a3;
  v4 = [(PSSGMessageBase *)[PSSGMessageDeRegister alloc] initWithType:1 string1:v3];

  [(PSSGMessageDeRegister *)v4 setPid:getpid()];

  return v4;
}

- ($995AEC83619B72959345773A9004CE00)serialize
{
  v5.receiver = self;
  v5.super_class = PSSGMessageDeRegister;
  v3 = [(PSSGMessageBase *)&v5 serialize];
  v3->var1 = [(PSSGMessageDeRegister *)self pid];
  return v3;
}

@end