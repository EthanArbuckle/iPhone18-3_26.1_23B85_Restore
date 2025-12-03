@interface ASMSduReassemblyInstance
- (ASMSduReassemblyInstance)initWithType:(unsigned __int8)type flags:(id)flags buffer:(id)buffer nextExpectedSegIdx:(unint64_t)idx;
- (BOOL)processSegment:(unsigned __int16)segment;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendToBuffer:(id)buffer;
- (void)reset;
@end

@implementation ASMSduReassemblyInstance

- (ASMSduReassemblyInstance)initWithType:(unsigned __int8)type flags:(id)flags buffer:(id)buffer nextExpectedSegIdx:(unint64_t)idx
{
  bufferCopy = buffer;
  v16.receiver = self;
  v16.super_class = ASMSduReassemblyInstance;
  v11 = [(ASMSduReassemblyInstance *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11[8] = type;
    *(v11 + 9) = flags;
    if (bufferCopy)
    {
      v13 = bufferCopy;
    }

    else
    {
      v13 = +[NSMutableData data];
    }

    buffer = v12->_buffer;
    v12->_buffer = v13;

    v12->_nextExpectedSegIdx = idx;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  if (v5)
  {
    [v5 setType:{-[ASMSduReassemblyInstance type](self, "type")}];
    [v5 setFlags:{-[ASMSduReassemblyInstance flags](self, "flags")}];
    buffer = [(ASMSduReassemblyInstance *)self buffer];
    v7 = [buffer copyWithZone:zone];
    [v5 setBuffer:v7];
  }

  return v5;
}

- (BOOL)processSegment:(unsigned __int16)segment
{
  segmentCopy = segment;
  segmentCopy2 = segment;
  nextExpectedSegIdx = [(ASMSduReassemblyInstance *)self nextExpectedSegIdx];
  if (nextExpectedSegIdx == segmentCopy)
  {
    [(ASMSduReassemblyInstance *)self setNextExpectedSegIdx:[(ASMSduReassemblyInstance *)self nextExpectedSegIdx]+ 1];
  }

  return nextExpectedSegIdx == segmentCopy2;
}

- (void)appendToBuffer:(id)buffer
{
  bufferCopy = buffer;
  buffer = [(ASMSduReassemblyInstance *)self buffer];
  [buffer appendData:bufferCopy];
}

- (void)reset
{
  buffer = [(ASMSduReassemblyInstance *)self buffer];
  [buffer setLength:0];

  [(ASMSduReassemblyInstance *)self setNextExpectedSegIdx:0];
}

@end