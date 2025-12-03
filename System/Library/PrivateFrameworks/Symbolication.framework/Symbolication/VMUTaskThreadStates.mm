@interface VMUTaskThreadStates
- (VMUTaskThreadStates)initWithVMUTask:(id)task;
- (unint64_t)stackPointerForThreadNum:(unsigned int)num;
- (void)dealloc;
- (void)threadStateForThreadNum:(unsigned int)num;
@end

@implementation VMUTaskThreadStates

- (void)dealloc
{
  stackPointers = self->_stackPointers;
  if (stackPointers)
  {
    free(stackPointers);
  }

  threadStates = self->_threadStates;
  if (threadStates)
  {
    free(threadStates);
  }

  v5.receiver = self;
  v5.super_class = VMUTaskThreadStates;
  [(VMUTaskThreadStates *)&v5 dealloc];
}

- (VMUTaskThreadStates)initWithVMUTask:(id)task
{
  taskCopy = task;
  v38.receiver = self;
  v38.super_class = VMUTaskThreadStates;
  v5 = [(VMUTaskThreadStates *)&v38 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v37 = 0;
  v36 = 0;
  memoryCache = [taskCopy memoryCache];
  v7 = [memoryCache taskThreadsWithList:&v37 listCnt:&v36];

  if (v7)
  {
    v8 = [taskCopy pid];
    v9 = mach_error_string(v7);
    NSLog(&cfstr_UnableToGather.isa, v8, v9, v7);
    goto LABEL_4;
  }

  v11 = v36;
  v5->_threadCount = v36;
  v5->_stackPointers = malloc_type_calloc(v11, 8uLL, 0x100004000313F17uLL);
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  memset(__src, 0, sizeof(__src));
  if (!v5->_threadCount)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], v37, 0);
    goto LABEL_34;
  }

  v12 = 0;
  while (1)
  {
    v5->_threadStateSize = 272;
    v31 = 68;
    memoryCache2 = [taskCopy memoryCache];
    v14 = [memoryCache2 threadGetState:*(v37 + 4 * v12) withFlavor:6 oldState:__src oldStateCnt:&v31];

    v15 = taskCopy;
    if ([v15 isExclave])
    {
      v16 = HIDWORD(v35);
      if ((BYTE12(v35) & 1) == 0)
      {
        *&v35 = [VMUTask ptrauthStripFunctionPointer:v15];
        v16 = HIDWORD(v35);
      }

      if ((v16 & 3) != 0)
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        *&v34 = [VMUTask ptrauthStripFunctionPointer:v15];
        v16 = HIDWORD(v35);
        if ((BYTE12(v35) & 1) == 0)
        {
LABEL_18:
          *(&v34 + 1) = [VMUTask ptrauthStripFunctionPointer:v15];
          v16 = HIDWORD(v35);
          if (BYTE12(v35))
          {
            goto LABEL_20;
          }

LABEL_19:
          *(&v33 + 1) = [VMUTask ptrauthStripDataPointer:v15];
          v16 = HIDWORD(v35);
          goto LABEL_20;
        }
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = HIDWORD(v35);
      v17 = v34;
      if ((BYTE12(v35) & 3) == 0)
      {
        v17 = v34;
      }

      *&v34 = v17;
    }

LABEL_20:
    HIDWORD(v35) = v16 & 0xFFFFFFF2 | 1;

    v18 = *(&v34 + 1);
    if (v14)
    {
      break;
    }

    threadStates = v5->_threadStates;
    if (!threadStates)
    {
      threadStates = malloc_type_calloc(v5->_threadCount, v5->_threadStateSize, 0x6777673AuLL);
      v5->_threadStates = threadStates;
    }

    v5->_stackPointers[v12] = v18;
    threadStateSize = v5->_threadStateSize;
    if (threadStateSize)
    {
      memcpy(&threadStates[(threadStateSize * v12)], __src, threadStateSize);
    }

    ++v12;
    threadCount = v5->_threadCount;
    if (v12 >= threadCount)
    {
      if (threadCount)
      {
        goto LABEL_27;
      }

LABEL_32:
      v26 = *MEMORY[0x1E69E9A60];
      v27 = v37;
      v25 = 0;
      goto LABEL_33;
    }
  }

  v28 = [v15 pid];
  v29 = mach_error_string(v14);
  NSLog(&cfstr_UnableToGetThr.isa, v12, v28, v29, v14);
  if (!v5->_threadCount)
  {
    goto LABEL_32;
  }

LABEL_27:
  v22 = 0;
  v23 = MEMORY[0x1E69E9A60];
  do
  {
    mach_port_deallocate(*v23, *(v37 + 4 * v22++));
    v24 = v5->_threadCount;
  }

  while (v22 < v24);
  v25 = 4 * v24;
  v26 = *v23;
  v27 = v37;
LABEL_33:
  mach_vm_deallocate(v26, v27, v25);
  if (!v14)
  {
LABEL_34:
    v10 = v5;
    goto LABEL_35;
  }

LABEL_4:
  v10 = 0;
LABEL_35:

  return v10;
}

- (void)threadStateForThreadNum:(unsigned int)num
{
  threadStates = self->_threadStates;
  if (threadStates && self->_threadCount > num)
  {
    return &threadStates[self->_threadStateSize * num];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)stackPointerForThreadNum:(unsigned int)num
{
  stackPointers = self->_stackPointers;
  if (stackPointers && self->_threadCount > num)
  {
    return stackPointers[num];
  }

  else
  {
    return 0;
  }
}

@end