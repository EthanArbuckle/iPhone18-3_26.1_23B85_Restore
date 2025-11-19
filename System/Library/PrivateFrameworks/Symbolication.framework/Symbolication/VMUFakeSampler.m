@interface VMUFakeSampler
- (VMUFakeSampler)initWithProcessObjectGraph:(id)a3;
- (id)threadDescriptionStringForBacktrace:(id)a3 returnedAddress:(unint64_t *)a4;
@end

@implementation VMUFakeSampler

- (VMUFakeSampler)initWithProcessObjectGraph:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VMUFakeSampler;
  v6 = [(VMUFakeSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, a3);
  }

  return v7;
}

- (id)threadDescriptionStringForBacktrace:(id)a3 returnedAddress:(unint64_t *)a4
{
  v5 = a3;
  if ([v5 backtraceLength])
  {
    v6 = -[VMUProcessObjectGraph threadNameForAddress:](self->_graph, "threadNameForAddress:", *[v5 stackFramePointers]);
    if (!v6)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread_%u", objc_msgSend(v5, "thread")];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end