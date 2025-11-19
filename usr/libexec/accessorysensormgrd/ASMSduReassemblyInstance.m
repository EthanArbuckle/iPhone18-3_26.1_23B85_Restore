@interface ASMSduReassemblyInstance
- (ASMSduReassemblyInstance)initWithType:(unsigned __int8)a3 flags:(id)a4 buffer:(id)a5 nextExpectedSegIdx:(unint64_t)a6;
- (BOOL)processSegment:(unsigned __int16)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendToBuffer:(id)a3;
- (void)reset;
@end

@implementation ASMSduReassemblyInstance

- (ASMSduReassemblyInstance)initWithType:(unsigned __int8)a3 flags:(id)a4 buffer:(id)a5 nextExpectedSegIdx:(unint64_t)a6
{
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ASMSduReassemblyInstance;
  v11 = [(ASMSduReassemblyInstance *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11[8] = a3;
    *(v11 + 9) = a4;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = +[NSMutableData data];
    }

    buffer = v12->_buffer;
    v12->_buffer = v13;

    v12->_nextExpectedSegIdx = a6;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  if (v5)
  {
    [v5 setType:{-[ASMSduReassemblyInstance type](self, "type")}];
    [v5 setFlags:{-[ASMSduReassemblyInstance flags](self, "flags")}];
    v6 = [(ASMSduReassemblyInstance *)self buffer];
    v7 = [v6 copyWithZone:a3];
    [v5 setBuffer:v7];
  }

  return v5;
}

- (BOOL)processSegment:(unsigned __int16)a3
{
  v3 = a3;
  v5 = a3;
  v6 = [(ASMSduReassemblyInstance *)self nextExpectedSegIdx];
  if (v6 == v3)
  {
    [(ASMSduReassemblyInstance *)self setNextExpectedSegIdx:[(ASMSduReassemblyInstance *)self nextExpectedSegIdx]+ 1];
  }

  return v6 == v5;
}

- (void)appendToBuffer:(id)a3
{
  v4 = a3;
  v5 = [(ASMSduReassemblyInstance *)self buffer];
  [v5 appendData:v4];
}

- (void)reset
{
  v3 = [(ASMSduReassemblyInstance *)self buffer];
  [v3 setLength:0];

  [(ASMSduReassemblyInstance *)self setNextExpectedSegIdx:0];
}

@end