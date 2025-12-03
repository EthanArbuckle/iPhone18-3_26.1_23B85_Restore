@interface VMUFakeSampler
- (VMUFakeSampler)initWithProcessObjectGraph:(id)graph;
- (id)threadDescriptionStringForBacktrace:(id)backtrace returnedAddress:(unint64_t *)address;
@end

@implementation VMUFakeSampler

- (VMUFakeSampler)initWithProcessObjectGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = VMUFakeSampler;
  v6 = [(VMUFakeSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
  }

  return v7;
}

- (id)threadDescriptionStringForBacktrace:(id)backtrace returnedAddress:(unint64_t *)address
{
  backtraceCopy = backtrace;
  if ([backtraceCopy backtraceLength])
  {
    v6 = -[VMUProcessObjectGraph threadNameForAddress:](self->_graph, "threadNameForAddress:", *[backtraceCopy stackFramePointers]);
    if (!v6)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread_%u", objc_msgSend(backtraceCopy, "thread")];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end