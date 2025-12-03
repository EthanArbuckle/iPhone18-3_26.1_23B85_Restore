@interface VMUBacktrace
- (VMUBacktrace)initWithCoder:(id)coder;
- (VMUBacktrace)initWithSamplingContext:(sampling_context_t *)context thread:(unsigned int)thread;
- (_CSTypeRef)_symbolicator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fixupStackWithSamplingContext:(sampling_context_t *)context symbolicator:(_CSTypeRef)symbolicator;
@end

@implementation VMUBacktrace

- (void)dealloc
{
  frames = self->_callstack.frames;
  if (frames)
  {
    free(frames);
  }

  framePtrs = self->_callstack.framePtrs;
  if (framePtrs)
  {
    free(framePtrs);
  }

  v5 = self->_asyncCallstack.frames;
  if (v5)
  {
    free(v5);
  }

  v6.receiver = self;
  v6.super_class = VMUBacktrace;
  [(VMUBacktrace *)&v6 dealloc];
}

- (VMUBacktrace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v56.receiver = self;
  v56.super_class = VMUBacktrace;
  v5 = [(VMUBacktrace *)&v56 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v5->_callstack.context.pid = [coderCopy decodeInt32ForKey:@"pid"];
  v5->_callstack.context.run_state = [coderCopy decodeIntForKey:@"run_state"];
  v5->_callstack.context.dispatch_queue_serial_num = [coderCopy decodeInt64ForKey:@"dispatch_queue_serial_num"];
  v5->_callstack.context.thread = [coderCopy decodeIntForKey:@"thread"];
  v5->_callstack.length = [coderCopy decodeInt32ForKey:@"length"];
  v5->_asyncCallstack.length = [coderCopy decodeInt32ForKey:@"asyncLength"];
  __n = 0;
  v6 = [coderCopy decodeBytesForKey:@"frames" returnedLength:&__n];
  length = v5->_callstack.length;
  if (__n != 8 * length)
  {
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v20)
    {
      [(VMUBacktrace *)v20 initWithCoder:v21, v22, v23, v24, v25, v26, v27];
    }

    goto LABEL_9;
  }

  v8 = v6;
  v9 = 8 * length;
  v10 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
  v5->_callstack.frames = v10;
  memcpy(v10, v8, __n);
  __n = 0;
  v11 = [coderCopy decodeBytesForKey:@"framePtrs" returnedLength:&__n];
  if (__n == v9 || !__n)
  {
    if (__n)
    {
      v29 = malloc_type_malloc(__n, 0x100004000313F17uLL);
      v5->_callstack.framePtrs = v29;
      memcpy(v29, v11, __n);
    }

    else
    {
      v35 = [coderCopy decodeBytesForKey:@"framePtr" returnedLength:&__n];
      if ((__n & 0xFFFFFFFFFFFFFFF7) != 0)
      {
        v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v36)
        {
          [(VMUBacktrace *)v36 initWithCoder:v37, v38, v39, v40, v41, v42, v43];
        }

        goto LABEL_9;
      }

      if (__n)
      {
        v52 = v35;
        v53 = malloc_type_calloc(v5->_callstack.length, 8uLL, 0x100004000313F17uLL);
        v5->_callstack.framePtrs = v53;
        *v53 = *v52;
      }
    }

    if (v5->_asyncCallstack.length)
    {
      v54 = 0;
      v30 = [coderCopy decodeBytesForKey:@"asyncFrames" returnedLength:&v54];
      v31 = v5->_asyncCallstack.length;
      if (v54 != 8 * v31)
      {
        v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v44)
        {
          [(VMUBacktrace *)v44 initWithCoder:v45, v46, v47, v48, v49, v50, v51];
        }

        goto LABEL_9;
      }

      v32 = v30;
      v33 = malloc_type_malloc(8 * v31, 0x100004000313F17uLL);
      v5->_asyncCallstack.frames = v33;
      memcpy(v33, v32, v54);
    }

LABEL_15:
    v28 = v5;
    goto LABEL_16;
  }

  v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v12)
  {
    [(VMUBacktrace *)v12 initWithCoder:v13, v14, v15, v16, v17, v18, v19];
  }

LABEL_9:
  v28 = 0;
LABEL_16:

  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_callstack.context.pid forKey:@"pid"];
  [coderCopy encodeInt:self->_callstack.context.run_state forKey:@"run_state"];
  [coderCopy encodeInt64:self->_callstack.context.dispatch_queue_serial_num forKey:@"dispatch_queue_serial_num"];
  [coderCopy encodeInt:self->_callstack.context.thread forKey:@"thread"];
  [coderCopy encodeInt32:self->_callstack.length forKey:@"length"];
  [coderCopy encodeInt32:self->_asyncCallstack.length forKey:@"asyncLength"];
  v4 = 8 * self->_callstack.length;
  [coderCopy encodeBytes:self->_callstack.frames length:v4 forKey:@"frames"];
  framePtrs = self->_callstack.framePtrs;
  if (framePtrs)
  {
    [coderCopy encodeBytes:framePtrs length:v4 forKey:@"framePtrs"];
    [coderCopy encodeBytes:self->_callstack.framePtrs length:8 forKey:@"framePtr"];
  }

  length = self->_asyncCallstack.length;
  if (length)
  {
    [coderCopy encodeBytes:self->_asyncCallstack.frames length:8 * length forKey:@"asyncFrames"];
  }
}

- (_CSTypeRef)_symbolicator
{
  if (_symbolicator_previousPid)
  {
    v2 = _symbolicator_previousPid == self->_callstack.context.pid;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    _symbolicator_previousPid = self->_callstack.context.pid;
    CSRelease();
    if (self->_callstack.context.pid)
    {
      _symbolicator_symbolicator_0 = CSSymbolicatorCreateWithPid();
      _symbolicator_symbolicator_1 = v4;
    }
  }

  v5 = _symbolicator_symbolicator_0;
  v6 = _symbolicator_symbolicator_1;
  result._opaque_2 = v6;
  result._opaque_1 = v5;
  return result;
}

- (VMUBacktrace)initWithSamplingContext:(sampling_context_t *)context thread:(unsigned int)thread
{
  v21.receiver = self;
  v21.super_class = VMUBacktrace;
  v6 = [(VMUBacktrace *)&v21 init];
  v7 = v6;
  if (!v6)
  {
LABEL_23:
    v7 = v7;
    v10 = v7;
    goto LABEL_24;
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *v17 = 0u;
  LODWORD(v18) = 512;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  *v13 = 0u;
  LODWORD(v14) = 512;
  if (context)
  {
    if (!sample_remote_thread_with_dispatch_queue_regular_and_swift_async())
    {
      if (DWORD1(v18) && DWORD1(v14))
      {
        copySamplingResultToCallstack(&v7->_callstack, thread, v17);
        v8 = v13;
        v9 = 80;
      }

      else
      {
        if (DWORD1(v18))
        {
          v8 = v17;
        }

        else
        {
          v8 = v13;
        }

        v9 = 24;
      }

      copySamplingResultToCallstack(v7 + v9, thread, v8);
      v11 = HIDWORD(v18);
      if (!HIDWORD(v18))
      {
        v11 = HIDWORD(v14);
      }

      v7->_flavor = v11;
      if (v17[0])
      {
        free(v17[0]);
      }

      if (v17[1])
      {
        free(v17[1]);
      }

      if (v13[0])
      {
        free(v13[0]);
      }

      if (v13[1])
      {
        free(v13[1]);
      }

      goto LABEL_23;
    }
  }

  else
  {

    v7 = 0;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VMUBacktrace allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->_flavor = self->_flavor;
    v6 = *&self->_callstack.context.pid;
    v7 = *&self->_callstack.context.dispatch_queue_serial_num;
    *&v4->_callstack.framePtrs = *&self->_callstack.framePtrs;
    *&v4->_callstack.context.dispatch_queue_serial_num = v7;
    *&v4->_callstack.context.pid = v6;
    objc_storeStrong(&v4->_callstack.recursionInfoArray, self->_callstack.recursionInfoArray);
    v8 = malloc_type_malloc(8 * self->_callstack.length, 0x100004000313F17uLL);
    v5->_callstack.frames = v8;
    memcpy(v8, self->_callstack.frames, 8 * self->_callstack.length);
    if (self->_callstack.framePtrs)
    {
      v5->_callstack.framePtrs = malloc_type_malloc(8 * self->_callstack.length, 0x100004000313F17uLL);
      memcpy(v5->_callstack.frames, self->_callstack.frames, 8 * self->_callstack.length);
    }

    v9 = *&self->_asyncCallstack.context.pid;
    v10 = *&self->_asyncCallstack.framePtrs;
    *&v5->_asyncCallstack.context.dispatch_queue_serial_num = *&self->_asyncCallstack.context.dispatch_queue_serial_num;
    *&v5->_asyncCallstack.framePtrs = v10;
    *&v5->_asyncCallstack.context.pid = v9;
    objc_storeStrong(&v5->_asyncCallstack.recursionInfoArray, self->_asyncCallstack.recursionInfoArray);
    length = self->_asyncCallstack.length;
    if (length)
    {
      v12 = malloc_type_malloc(8 * length, 0x100004000313F17uLL);
      v5->_asyncCallstack.frames = v12;
      memcpy(v12, self->_asyncCallstack.frames, 8 * self->_asyncCallstack.length);
    }
  }

  return v5;
}

- (id)description
{
  [(VMUBacktrace *)self _symbolicator];
  flavor = self->_flavor;
  if (flavor > 63)
  {
    if (flavor != 64)
    {
      if (flavor == 65)
      {
        v4 = @"ARM LR";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = @"ARM Simple";
  }

  else
  {
    if (flavor != 32)
    {
      if (flavor == 33)
      {
        v4 = @"I386 ESP";
        goto LABEL_11;
      }

LABEL_8:
      v4 = @"unknown";
      goto LABEL_11;
    }

    v4 = @"I386 Simple";
  }

LABEL_11:
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VMUBacktrace (Flavor: %@ Time: %llu Process: %d Thread: %X  Dispatch queue serial num: %lld)\n", v4, self->_timestamp, self->_callstack.context.pid, self->_callstack.context.thread, self->_callstack.context.dispatch_queue_serial_num];
  v6 = descriptionForCallstackFrames(&self->_callstack, @"Frames");
  v7 = [v5 stringByAppendingString:v6];

  if (self->_asyncCallstack.length)
  {
    v8 = descriptionForCallstackFrames(&self->_asyncCallstack, @"Async Frames");
    v9 = [v7 stringByAppendingString:v8];

    v7 = v9;
  }

  return v7;
}

- (void)fixupStackWithSamplingContext:(sampling_context_t *)context symbolicator:(_CSTypeRef)symbolicator
{
  flavor = self->_flavor;
  if (flavor > 63)
  {
    if (flavor != 64 && flavor != 65)
    {
      goto LABEL_4;
    }
  }

  else if (flavor != 32 && flavor != 33)
  {
LABEL_4:
    NSLog(&cfstr_UnsupportedFla.isa, a2, context, symbolicator._opaque_1, symbolicator._opaque_2, &self->_flavor, self->_flavor);
    return;
  }

  v8 = self->_flavor;
  frames = self->_callstack.frames;
  CSSymbolicatorFixupFrames();
  if (self->_asyncCallstack.length)
  {
    v7 = self->_asyncCallstack.frames;
    CSSymbolicatorFixupFrames();
  }
}

@end